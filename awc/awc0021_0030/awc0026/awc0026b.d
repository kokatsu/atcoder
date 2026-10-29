import std;

void main() {
    long N, K;
    readfln("%d %d", N, K);

    long[] A = readln.chomp.split.to!(long[]);

    long Takahashi, Aoki;
    foreach (a; A) {
        if (Takahashi + a <= K) {
            Takahashi += a;
        }
        else {
            Aoki += a;
        }
    }

    string res = "Draw";
    if (Takahashi > Aoki) {
        res = "Takahashi";
    }
    if (Takahashi < Aoki) {
        res = "Aoki";
    }

    res.writeln;
}
