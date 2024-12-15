import std;

enum long S = 42;
enum long L = 130000000;

void main() {
    long res = S;
    while (res <= L) {
        res *= 2;
    }

    res.writeln;
}
