import std;

void main() {
    int N;
    readf("%d\n", N);

    auto W = readln.chomp.split.to!(string[]);

    string[] L = ["and", "not", "that", "the", "you"];

    string res = W.any!(w => L.canFind(w)) ? "Yes" : "No";
    res.writeln;
}
