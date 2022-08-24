import std;

void main() {
    string S;
    readf("%s\n", S);

    string res = S ~ (S.back == 's' ? "es" : "s");
    res.writeln;
}