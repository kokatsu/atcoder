import std;

void main() {
    int N, K;
    readf("%d %d\n", N, K);

    auto A = readln.chomp.split.to!(int[]);

    foreach (_; 0 .. K) {
        A.popFront;
        A ~= 0;
    }

    writefln("%(%s %)", A);
}
