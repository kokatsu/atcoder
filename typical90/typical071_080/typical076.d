import std;

void main() {
    long N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(long[]);

    auto B = A ~ A;

    bool isOK;
    long P, S = A.sum, r;
    foreach (l; 0 .. N) {
        while ((P + B[r]) * 10 <= S) {
            P += B[r++];
        }

        isOK |= (P * 10 == S);

        if (l == r) ++r;
        else P -= B[l];
    }

    writeln(isOK ? "Yes" : "No");
}