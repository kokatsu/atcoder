import std;

void main() {
    long N, P;
    readf("%d %d\n", N, P);

    auto A = readln.chomp.split.to!(long[]);

    long mul = 1, r;
    foreach (l; 0 .. N) {
        while (r < N && mul < P) {
            mul *= A[r++];
        }

        if (mul == P) {
            "Yay!".writeln;
            return;
        }

        if (r == l) ++r;
        else mul /= A[l];
    }

    ":(".writeln;
}