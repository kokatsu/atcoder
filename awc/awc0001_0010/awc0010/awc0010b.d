import std;

void main() {
    int N;
    readfln("%d", N);

    long[] D = readln.chomp.split.to!(long[]);

    long res = D[0];
    foreach (i; 1 .. N) {
        res += D[i - 1] < D[i] ? D[i] / 2 : D[i];
    }

    res.writeln;
}
