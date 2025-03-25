import std;

void main() {
    dchar p, q;
    readf("%c %c\n", p, q);

    int[] A = [0, 3, 1, 4, 1, 5, 9];
    auto C = A.cumulativeFold!((a, b) => a + b).array;

    if (p > q) {
        swap(p, q);
    }

    int res = C[q - 'A'] - C[p - 'A'];
    res.writeln;
}
