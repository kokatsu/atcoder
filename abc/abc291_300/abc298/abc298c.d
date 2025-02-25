import std;

enum int L = 2 * 10 ^^ 5;

void main() {
    int N, Q;
    readf("%d\n%d\n", N, Q);

    auto ballsInBoxes = new RedBlackTree!(int, "a < b", true)[](N + 1);
    foreach (i; 0 .. N) {
        ballsInBoxes[i + 1] = redBlackTree!(true, int)();
    }

    auto boxesWithBalls = new RedBlackTree!(int)[](L + 1);
    foreach (i; 0 .. L) {
        boxesWithBalls[i + 1] = redBlackTree!int();
    }

    foreach (_; 0 .. Q) {
        auto query = readln.chomp.split.to!(int[]);
        int q = query[0], i = query[1];

        if (q == 1) {
            int j = query[2];
            ballsInBoxes[j].insert(i);
            boxesWithBalls[i].insert(j);
        }
        else if (q == 2) {
            writefln("%(%d %)", ballsInBoxes[i].array);
        }
        else {
            writefln("%(%d %)", boxesWithBalls[i].array);
        }
    }
}
