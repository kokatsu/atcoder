import std;

void main() {
    string S;
    readfln("%s", S);

    string[] notes = [
        "Do", "", "Re", "", "Mi", "Fa", "", "So", "", "La", "", "Si"
    ];

    auto I = S.indexOf("WWBWBWBWW");

    string res = notes[(notes.length + 4 - I) % notes.length];
    res.writeln;
}
