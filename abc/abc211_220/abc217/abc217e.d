import std;

void main() {
    int Q;
    readf("%d\n", Q);

    int[] A;
    auto B = new BinaryHeap!(Array!int, "a > b")();

    foreach (i; 0 .. Q) {
        auto query = readln.chomp.split.to!(int[]);

        if (query[0] == 1) {
            A ~= query[1];
        }
        else if (query[0] == 2) {
            if (B.empty) {
                A.front.writeln;
                A.popFront;
            }
            else {
                B.front.writeln;
                B.popFront;
            }
        }
        else {
            foreach (a; A) {
                B.insert(a);
            }
            A = [];
        }
    }
}
