package main

import (
	"os"

	"github.com/goplus/llgo/x/python"
	"github.com/goplus/llgo/x/python/py"
)

/*
import gradio as gr

def update_examples(country):
    if country == "USA":
        return gr.Dataset(samples=[["Chicago"], ["Little Rock"], ["San Francisco"]])
    else:
        return gr.Dataset(samples=[["Islamabad"], ["Karachi"], ["Lahore"]])

with gr.Blocks() as demo:
    dropdown = gr.Dropdown(label="Country", choices=["USA", "Pakistan"], value="USA")
    textbox = gr.Textbox()
    examples = gr.Examples([["Chicago"], ["Little Rock"], ["San Francisco"]], textbox)
    dropdown.change(update_examples, dropdown, examples.dataset)

demo.launch()
*/

var gr python.Module

func UpdateExamples(self, args *py.Object) *py.Object {
	argsTuple := python.FromPy(args).AsTuple()
	country := argsTuple.Get(0).AsStr().String()
	println("country:", country)
	if country == "USA" {
		return gr.CallKeywords("Dataset")(python.MakeDict(map[any]any{
			"samples": [][]string{{"Chicago"}, {"Little Rock"}, {"San Francisco"}},
		})).Obj()
	} else {
		return gr.CallKeywords("Dataset")(python.MakeDict(map[any]any{
			"samples": [][]string{{"Islamabad"}, {"Karachi"}, {"Lahore"}},
		})).Obj()
	}
}

func main() {
	if len(os.Args) > 2 {
		// avoid gradio start subprocesses
		return
	}
	// TODO(lijie): python initialization automatically not working
	py.Initialize()
	gr = python.ImportModule("gradio")
	fn := python.FuncOf("update_examples", python.FuncPtr(UpdateExamples),
		"update_examples(country, /)\n--\n\nUpdate examples based on country")
	// fn := python.FuncOf(UpdateExamples)

	demo := python.With(gr.Call("Blocks"), func(v python.Object) {
		dropdown := gr.CallKeywords("Dropdown")(python.MakeDict(map[any]any{
			"label":   "Country",
			"choices": []string{"USA", "Pakistan"},
			"value":   "USA",
		}))
		textbox := gr.Call("Textbox")
		examples := gr.Call("Examples", [][]string{{"Chicago"}, {"Little Rock"}, {"San Francisco"}}, textbox)
		dataset := examples.GetAttr("dataset")
		dropdown.CallMethod("change", fn, dropdown, dataset)
	})
	demo.CallMethod("launch")
}
