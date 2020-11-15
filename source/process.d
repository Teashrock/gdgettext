import std.file;
import std.array: split;

immutable string[] supportedExts = {
    "gd",
    "tscn"
}

void process(string[] filePaths)
{
    foreach (string filePath; filePaths) {
        if (!isSupportedExt(filePath.split(".")[filePath.split(".").length - 1]))
            continue;
        
        try {
            string content = readText(filePath);
        } catch (FileException) {
            return null;
        }
    }
}

bool isSupportedExt(string ext) {
    foreach (string each; supportedExts)
        if (ext == each)
            return true;
    return false;
}
