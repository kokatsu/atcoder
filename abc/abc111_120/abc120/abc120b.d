import std;

void main() {
    int A, B, K;
    readf("%d %d %d\n", A, B, K);

    int[] list;
    foreach (i; 1 .. A+1) {
        if (A % i == 0 && B % i == 0) list ~= i;
    }

    int res = list[$-K];
    res.writeln;
}