import std;

void main() {
    int A, B, C;
    readf("%d %d %d\n", A, B, C);

    int res = -1;
    int N = C;
    while (N <= B) {
        if (N >= A) {
            res = N;
            break;
        }
        N += C;
    }

    res.writeln;
}
