import std;

void main() {
    long N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(long[]);

    long mx = A.maxElement;

    auto cnts = new long[](mx + 1);
    foreach (a; A)
        ++cnts[a];

    long res;
    foreach (i; 1 .. mx + 1) {
        if (i * i <= mx) {
            res += cnts[i * i] * cnts[i] * cnts[i];
        }

        foreach (j; iota(i * (i + 1), mx + 1, i)) {
            res += cnts[j] * cnts[i] * cnts[j / i] * 2;
        }
    }

    res.writeln;
}
