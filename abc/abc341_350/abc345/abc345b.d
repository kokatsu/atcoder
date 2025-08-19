import std;

void main() {
    long X;
    readf("%d\n", X);

    long D = X + 9;
    long C = D < 0 && D % 10 != 0 ? 1 : 0;

    long res = D / 10 - C;
    res.writeln;
}
