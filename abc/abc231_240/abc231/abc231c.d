import std;

void main() {
    int N, Q;
    readf("%d %d\n", N, Q);

    auto A = readln.chomp.split.to!(int[]);
    
    auto B = A.sort;
    
    foreach (_; 0 .. Q) {
        int x;
        readf("%d\n", x);

        auto res = B.upperBound(x-1).length;
        res.writeln;
    }
}