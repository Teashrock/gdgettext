import std.file;
import std.array: split;

immutable string[] supportedExts = {
    "gd",
    "tscn"
}

void process(string[] filePaths)
{
    foreach (string fileName; filePaths) {
        if (!isSupportedExt(fileName.split(".")[fileName.split(".").length - 1]))
            continue;
        
        
    }
}

bool isSupportedExt(string ext) {
    foreach (string each; supportedExts)
        if (ext == each)
            return true;
    return false;
}
