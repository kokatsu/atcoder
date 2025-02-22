import std;

void main() {
    string S;
    readf("%s\n", S);

    auto C = S.count("2");
    string res = "2".replicate(C);

    res.writeln;
}
