import std;

void main() {
    string S;
    readfln("%s", S);

    string res = S ~ (S[$ - 1] == 'e' ? "r" : "er");
    res.writeln;
}
