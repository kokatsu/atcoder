import std;

void main() {
    dchar C;
    readf("%c\n", C);

    dchar res = to!dchar(C+1);
    res.writeln;
}