import std;

void main() {
    int N;
    readfln("%d", N);

    bool isLikePrime = N > 1;
    for (int i = 2; i * i <= N; i++) {
        if (N % i == 0) {
            isLikePrime = false;
            break;
        }
    }

    isLikePrime |= N > 1 && N % 2 != 0 && N % 3 != 0 && N % 5 != 0;

    string res = isLikePrime ? "Prime" : "Not Prime";
    res.writeln;
}
