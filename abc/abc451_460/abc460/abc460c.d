import std;

void main() {
    int N, M;
    readfln("%d %d", N, M);

    int[] A = readln.chomp.split.to!(int[]);
    int[] B = readln.chomp.split.to!(int[]);

    A.sort!"a > b";

    auto rbt = new RedBlackTree!(int, "a < b", true)(B);

    int res;
    foreach (a; A) {
        auto lb = rbt.lowerBound(a * 2 + 1);
        if (!lb.empty) {
            rbt.removeKey(lb.back);
            ++res;
        }
    }

    res.writeln;
}
