import std;

void main() {
    string S = readln.chomp;

    if (S[$-2..$] == "er") {
        writeln("er");
    }
    else {
        writeln("ist");
    }
}