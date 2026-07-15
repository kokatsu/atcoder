import std;

void main() {
    int T;
    readfln("%d", T);

    string[] R = new string[](T);
    foreach (ref r; R) {
        long N, K;
        readfln("%d %d", N, K);

        long M;
        while (N > 0) {
            M += N % 3;
            N /= 3;
        }

        if (M <= K && (K - M) % 2 == 0) {
            r = "Yes";
        }
        else {
            r = "No";
        }
    }

    string res = format("%-(%s\n%)", R);
    res.writeln;
}
