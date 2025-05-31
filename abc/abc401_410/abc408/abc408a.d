import std;

void main() {
    int N, S;
    readf("%d %d\n", N, S);

    auto T = [0] ~ readln.chomp.split.to!(int[]);

    string res = N.iota.all!(i => T[i + 1] - T[i] <= S) ?
        "Yes" : "No";
    res.writeln;
}
