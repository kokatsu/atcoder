import std;

void main() {
    int A, B, C;
    readf("%d %d %d\n", A, B, C);

    int max = max(A, B, C);

    int sum = A + B + C;
    int diff = max * 3 - sum;
    int res = diff / 2;
    if (diff % 2 == 1) {
        res += 2;
    }

    res.writeln;
}
