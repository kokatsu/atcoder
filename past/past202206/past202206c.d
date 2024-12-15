import std;

enum long L = 10L ^^ 9;

void main() {
    long N, M;
    readf("%d %d\n", N, M);

    bool isOk = true;
    long num = 1;
    auto res = new dchar[](M);
    foreach (i; 0 .. M) {
        if (isOk) {
            num *= N;
            isOk &= num <= L;
        }

        res[i] = isOk ? 'o' : 'x';
    }

    res.writeln;
}
