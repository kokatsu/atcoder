import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(int[]);

    auto B = A.dup;
    int l = 1 << N;
    while (l > 2) {
        l /= 2;
        foreach (i; 0 .. l) {
            B[i] = max(B[i*2], B[i*2+1]);
        }
    }

    int num = (B[0] < B[1] ? B[0] : B[1]);
    foreach (i, a; A) {
        if (a == num) writeln(i+1);
    }
}