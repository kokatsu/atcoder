import std;

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    auto C = readln.chomp.split.to!(string[]);
    auto D = readln.chomp.split.to!(string[]);
    auto P = readln.chomp.split.to!(int[]);

    int[string] dict;
    foreach (i, d; D) {
        dict[d] = P[i + 1];
    }

    int res = C.map!(c => c in dict ? dict[c] : P[0]).sum;
    res.writeln;
}
