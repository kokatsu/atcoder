import std;

void main() {
    long H;
    readf("%d\n", H);

    long res, num = 1;
    while (H > 0) {
        res += num;
        H /= 2, num *= 2;
    }

    res.writeln;
}
