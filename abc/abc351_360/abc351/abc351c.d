import std;

void main() {
    int N;
    readf("%d\n", N);

    int[] A = readln.chomp.split.to!(int[]);

    int[] B;
    int res;
    foreach (a; A) {
        B ~= a;
        ++res;
        while (res > 1 && B[$ - 1] == B[$ - 2]) {
            B.popBack;
            ++B.back;
            --res;
        }
    }

    res.writeln;
}
