import std;

void main() {
    int H, W;
    readf("%d %d\n", H, W);

    auto A = new long[][](H);
    foreach (i; 0 .. H) {
        A[i] = readln.chomp.split.to!(long[]);
    }

    auto B = A.transposed;
    foreach (b; B) {
        writefln("%(%d %)", b);
    }
}