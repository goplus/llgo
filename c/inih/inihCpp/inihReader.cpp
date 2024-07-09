#include "INIReader.h"

extern "C" {

    // Create an INIReader object
    INIReader* new_ini_reader(const char* filename) {
        INIReader *reader;
        reader = new INIReader(filename);
        if (reader->ParseError() != 0) {
            delete reader;
            return NULL;
        }
        return reader;
    }

    // Destroy an INIReader object
    void delete_ini_reader(INIReader* reader) {
        if (reader) {
            delete reader;
        }
    }

    // Get an integer value from the INI file
    long ini_get_integer(INIReader* reader, const char* section, const char* name, long default_value) {
        if (!reader) return default_value;
        return reader->GetInteger(std::string(section), std::string(name), default_value);
    }
}
