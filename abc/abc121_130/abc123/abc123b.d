import std;

void main() {
    auto A = new int[](5);
    foreach (i; 0 .. 5) readf("%d\n", A[i]);

    A.sort!((x, y) => (x - 1) % 10 > (y - 1) % 10);

    int res;
    foreach (i; 0 .. 4) res += (A[i] + 9) / 10 * 10;

    res += A[4];

    res.writeln;
}