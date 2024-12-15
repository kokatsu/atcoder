import std;

void main() {
    int N;
    readf("%d\n", N);

    auto S = readln.chomp.split.join;

    auto A = S.assocArray(true.repeat);

    string res = A.length == 3 ? "Three" : "Four";
    res.writeln;
}
