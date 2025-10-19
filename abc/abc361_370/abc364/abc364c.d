import std;

void main() {
    long N, X, Y;
    readf("%d %d %d\n", N, X, Y);

    long[] A = readln.chomp.split.to!(long[]);
    long[] B = readln.chomp.split.to!(long[]);

    A.sort!"a > b";
    B.sort!"a > b";

    long res;
    foreach (a, b; zip(A, B)) {
        ++res;

        X -= a, Y -= b;
        if (X < 0 || Y < 0) {
            break;
        }
    }

    res.writeln;
}
