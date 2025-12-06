import std;

void main() {
    int N;
    readf("%d\n", N);

    int[] A = readln.chomp.split.to!(int[]);

    int res, L = A[0] + 1;
    foreach (i, a; A) {
        if (i + 1 >= L) {
            break;
        }

        ++res;
        L = max(L, a + i.to!int + 1);
    }

    res.writeln;
}
