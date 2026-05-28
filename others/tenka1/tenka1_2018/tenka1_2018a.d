import std;

void main() {
    dchar[] S;
    readfln("%s", S);

    if (S.length == 3) {
        S.reverse;
    }

    dchar[] res = S;
    res.writeln;
}
