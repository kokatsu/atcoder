import std;

void main() {
    int N;
    readf("%d\n", N);

    auto S = new string[](N);
    auto A = new int[](N);

    foreach (i; 0 .. N) {
        readf("%s %d\n", S[i], A[i]);
    }

    auto f = A.minIndex;

    string res = N.iota.map!(i => S[(i + f) % N]).join("\n");
    res.writeln;
}
