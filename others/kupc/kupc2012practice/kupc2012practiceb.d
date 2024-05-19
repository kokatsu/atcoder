import std;

void main() {
    int N, K;
    readf("%d %d\n", N, K);

    auto a = readln.chomp.split;

    a.sort!"a > b";

    string res = a.join;
    res.writeln;
}