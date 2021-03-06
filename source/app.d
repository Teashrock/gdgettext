import std.getopt;

immutable {
    outputFlagDefault = "messages.po";
    outputFlagUsage   = "Write output to specified file (instead of `messages.po`).";
}

string outputFile;

void main(string[] args)
{
    auto help = getopt(
        args,
        "o", outputFlagDefault, outputFlagUsage,
        "output", outputFlagDefault, outputFlagUsage
    );
}
