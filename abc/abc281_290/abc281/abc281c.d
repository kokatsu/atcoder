import std;

void main() {
    long N, T;
    readf("%d %d\n", N, T);

    auto A = readln.chomp.split.to!(long[]);

    long S = A.sum;
    T %= S;

    foreach (i, a; A) {
        if (T < a) {
            writeln(i+1, " ", T);
            return;
        }

        T -= a;
    }
}