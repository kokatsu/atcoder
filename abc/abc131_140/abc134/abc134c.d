import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = new int[](N);
    foreach (i; 0 .. N)
        readf("%d\n", A[i]);

    auto B = A.dup;

    B.sort!"a > b";

    foreach (a; A) {
        writeln(a == B[0] ? B[1] : B[0]);
    }
}
