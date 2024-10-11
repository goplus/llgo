package main

import (
	"os"

	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/py"
	"github.com/goplus/llgo/x/python"
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
	argsTuple := python.NewTuple(args)
	country := python.Cast[python.Str](argsTuple.Get(0)).String()
	println("country:", country)
	if country == "USA" {
		return gr.Call("Dataset", python.DictFromPairs(
			"samples", python.MakeList([]string{"Chicago"}, []string{"Little Rock"}, []string{"San Francisco"})),
		).Obj()
	} else {
		return gr.Call("Dataset", python.DictFromPairs(
			"samples", python.MakeList([]string{"Islamabad"}, []string{"Karachi"}, []string{"Lahore"})),
		).Obj()
	}
}

func main() {
	if len(os.Args) > 2 {
		return
	}
	py.Initialize()
	println("Initialized")
	gr = python.ImportModule("gradio")
	mod := python.ImportModule("__main__")
	fn := mod.AddFunction("update_examples", c.Func(UpdateExamples),
		"update_examples(country, /)\n--\n\nUpdate examples based on country")

	demo := gr.Call("Blocks")
	// with demo:
	demo.CallMethod("__enter__")
	// TODO(lijie): check why call __exit__ early
	// defer demo.CallMethod("__exit__")
	dropdown := gr.CallKeywords("Dropdown", python.MakeTupleWith(), python.MakeDict(map[any]any{
		"label":   "Country",
		"choices": []string{"USA", "Pakistan"},
		"value":   "USA",
	}))
	textbox := gr.Call("Textbox")
	options := python.From([][]string{{"Chicago"}, {"Little Rock"}, {"San Francisco"}})
	examples := gr.Call("Examples", options, textbox)
	dataset := examples.GetAttr("dataset")
	dropdown.CallMethod("change", fn, dropdown, dataset)
	demo.CallMethod("launch")
	println("done")
}
