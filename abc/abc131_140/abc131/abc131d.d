import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = new int[](N), B = new int[](N);
    foreach (i; 0 .. N) {
        readf("%d %d\n", A[i], B[i]);
    }

    zip(A, B).sort!"a[1] < b[1]";

    bool isOK = true;
    long t;
    foreach (a, b; zip(A, B)) {
        if (t + a <= b) {
            t += a;
        }
        else {
            isOK = false;
            break;
        }
    }

    writeln(isOK ? "Yes" : "No");
}
