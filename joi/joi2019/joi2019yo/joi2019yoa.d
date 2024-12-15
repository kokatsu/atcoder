import std;

void main() {
    int A, B, C;
    readf("%d %d %d\n", A, B, C);

    int res, coins;
    while (coins < C) {
        coins += A;
        if (++res % 7 == 0)
            coins += B;
    }

    res.writeln;
}
