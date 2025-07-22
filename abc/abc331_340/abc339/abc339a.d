import std;

void main() {
    string S;
    readf("%s\n", S);

    string res = S.split('.')[$ - 1];
    res.writeln;
}
