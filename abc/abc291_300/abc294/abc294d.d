import std;

void main() {
    int N, Q;
    readf("%d %d\n", N, Q);

    auto rbt1 = new RedBlackTree!(int, "a < b")();
    foreach (i; 1 .. N + 1)
        rbt1.insert(i);

    auto rbt2 = new RedBlackTree!(int, "a < b")();

    foreach (_; 0 .. Q) {
        auto input = readln.chomp.split.to!(int[]);

        if (input[0] == 1) {
            auto f = rbt1.front;
            rbt1.removeFront;
            rbt2.insert(f);
        }
        else if (input[0] == 2) {
            rbt2.removeKey(input[1]);
        }
        else {
            rbt2.front.writeln;
        }
    }
}
