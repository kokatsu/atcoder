import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = new int[](N), B = new int[](N);
    foreach (i; 0 .. N) {
        readf("%d %d\n", A[i], B[i]);
    }

    int len = A.sum;
    int left = 0, right = N - 1;
    real lr = 0.0, rr = 0.0;
    real res = 0.0;
    while (left < right) {
        real tl = A[left].to!real / B[left] - lr;
        real tr = A[right].to!real / B[right] - rr;
        if (tl == tr) {
            res += A[left];
            ++left, --right;
            lr = 0.0, rr = 0.0;
        }
        else if (tl < tr) {
            res += A[left];
            ++left;
            rr += tl;
            lr = 0.0;
        }
        else {
            --right;
            lr += tr;
            rr = 0.0;
        }
    }

    if (left == right) {
        real rem = A[left].to!real - (lr + rr) * B[left];
        res += 0.5 * rem + lr * B[left];
    }

    format("%0.8f", res).writeln;
}
