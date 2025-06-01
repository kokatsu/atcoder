import std;

void main() {
    string N;
    readf("%s\n", N);

    auto L = N.length;

    string res = iota(1, L).all!(i => N[i - 1] > N[i]) ?
        "Yes" : "No";
    res.writeln;
}
