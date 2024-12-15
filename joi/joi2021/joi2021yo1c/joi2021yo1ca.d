import std;

void main() {
    int A, B;
    readf("%d %d\n", A, B);

    int add = A + B, sub = A - B;

    int[] res = [max(add, sub), min(add, sub)];
    writefln("%(%d\n%)", res);
}
