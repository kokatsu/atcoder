import std;

void main() {
    int N;
    readfln("%d", N);

    int res = 1;
    while (res ^^ 4 < N) {
        ++res;
    }

    res.writeln;
}
