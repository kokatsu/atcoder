import std;

void main() {
    long H;
    readf("%d\n", H);

    long res, S;
    while (S <= H) {
        S += 1 << res++;
    }

    res.writeln;
}
