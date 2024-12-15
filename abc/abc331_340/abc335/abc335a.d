import std;

void main() {
    string S;
    readf("%s\n", S);

    string res = S[0 .. $ - 1] ~ "4";
    res.writeln;
}
