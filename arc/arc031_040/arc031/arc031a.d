import std;

void main() {
    dchar[] Name;
    readfln("%s", Name);

    dchar[] R = Name.retro.array;

    string res = Name == R ? "YES" : "NO";
    res.writeln;
}
