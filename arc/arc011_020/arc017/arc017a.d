import std;

void main() {
    int N;
    readfln("%d", N);

    bool isPrime = true;
    int d = 2;
    while (d * d <= N) {
        if (N % d == 0) {
            isPrime = false;
            break;
        }
        ++d;
    }

    string res = isPrime ? "YES" : "NO";
    res.writeln;
}
