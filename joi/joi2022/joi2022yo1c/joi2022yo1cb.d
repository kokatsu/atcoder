import std;

void main() {
    int S, A, B;
    readf("%d\n%d\n%d\n", S, A, B);

    int res = 250 + (max(0, S - A) + B - 1) / B * 100;
    res.writeln;
}
