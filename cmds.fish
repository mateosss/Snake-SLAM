#!/usr/bin/env fish

# resultsDET: Determinisitc
# resultsND1: Non-deterministic, maximum speed, run 1
# resultsND2: Non-deterministic, maximum speed, run 2
# resultsDCK: Sparse duplicates to check that resultsDET is indeed deterministic

export msdmg_config_dt=configs/msdmg.ini
export msdmo_config_dt=configs/msdmo.ini
export msdmi_config_dt=configs/msdmi.ini
export msdmg_config_nd=configs/msdmg_nodet.ini
export msdmo_config_nd=configs/msdmo_nodet.ini
export msdmi_config_nd=configs/msdmi_nodet.ini

mkdir -p resultsDET resultsND1 resultsND2 resultsDCK

while not test -e MGO01_low_light_exists; sleep 1; echo "waiting for MGO01_low_light_exists"; end
./build/bin/snake_slam $msdmg_config_dt --dataset MGO01_low_light/mav0/ --outDir resultsDET/MGO01/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MGO01/
./build/bin/snake_slam $msdmg_config_nd --dataset MGO01_low_light/mav0/ --outDir resultsND1/MGO01/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MGO01/
./build/bin/snake_slam $msdmg_config_nd --dataset MGO01_low_light/mav0/ --outDir resultsND2/MGO01/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MGO01/
rm -rf MGO01_low_light MGO01_low_light_exists

while not test -e MGO02_hand_puncher_exists; sleep 1; echo "waiting for MGO02_hand_puncher_exists"; end
./build/bin/snake_slam $msdmg_config_dt --dataset MGO02_hand_puncher/mav0/ --outDir resultsDET/MGO02/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MGO02/
./build/bin/snake_slam $msdmg_config_nd --dataset MGO02_hand_puncher/mav0/ --outDir resultsND1/MGO02/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MGO02/
./build/bin/snake_slam $msdmg_config_nd --dataset MGO02_hand_puncher/mav0/ --outDir resultsND2/MGO02/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MGO02/
rm -rf MGO02_hand_puncher MGO02_hand_puncher_exists

while not test -e MGO03_hand_shooter_easy_exists; sleep 1; echo "waiting for MGO03_hand_shooter_easy_exists"; end
./build/bin/snake_slam $msdmg_config_dt --dataset MGO03_hand_shooter_easy/mav0/ --outDir resultsDET/MGO03/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MGO03/
./build/bin/snake_slam $msdmg_config_nd --dataset MGO03_hand_shooter_easy/mav0/ --outDir resultsND1/MGO03/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MGO03/
./build/bin/snake_slam $msdmg_config_nd --dataset MGO03_hand_shooter_easy/mav0/ --outDir resultsND2/MGO03/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MGO03/
./build/bin/snake_slam $msdmg_config_dt --dataset MGO03_hand_shooter_easy/mav0/ --outDir resultsDCK/MGO03/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDCK/MGO03/
rm -rf MGO03_hand_shooter_easy MGO03_hand_shooter_easy_exists

while not test -e MGO04_hand_shooter_hard_exists; sleep 1; echo "waiting for MGO04_hand_shooter_hard_exists"; end
./build/bin/snake_slam $msdmg_config_dt --dataset MGO04_hand_shooter_hard/mav0/ --outDir resultsDET/MGO04/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MGO04/
./build/bin/snake_slam $msdmg_config_nd --dataset MGO04_hand_shooter_hard/mav0/ --outDir resultsND1/MGO04/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MGO04/
./build/bin/snake_slam $msdmg_config_nd --dataset MGO04_hand_shooter_hard/mav0/ --outDir resultsND2/MGO04/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MGO04/
rm -rf MGO04_hand_shooter_hard MGO04_hand_shooter_hard_exists

while not test -e MGO05_inspect_easy_exists; sleep 1; echo "waiting for MGO05_inspect_easy_exists"; end
./build/bin/snake_slam $msdmg_config_dt --dataset MGO05_inspect_easy/mav0/ --outDir resultsDET/MGO05/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MGO05/
./build/bin/snake_slam $msdmg_config_nd --dataset MGO05_inspect_easy/mav0/ --outDir resultsND1/MGO05/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MGO05/
./build/bin/snake_slam $msdmg_config_nd --dataset MGO05_inspect_easy/mav0/ --outDir resultsND2/MGO05/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MGO05/
rm -rf MGO05_inspect_easy MGO05_inspect_easy_exists

while not test -e MGO06_inspect_hard_exists; sleep 1; echo "waiting for MGO06_inspect_hard_exists"; end
./build/bin/snake_slam $msdmg_config_dt --dataset MGO06_inspect_hard/mav0/ --outDir resultsDET/MGO06/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MGO06/
./build/bin/snake_slam $msdmg_config_nd --dataset MGO06_inspect_hard/mav0/ --outDir resultsND1/MGO06/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MGO06/
./build/bin/snake_slam $msdmg_config_nd --dataset MGO06_inspect_hard/mav0/ --outDir resultsND2/MGO06/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MGO06/
rm -rf MGO06_inspect_hard MGO06_inspect_hard_exists

while not test -e MGO07_mapping_easy_exists; sleep 1; echo "waiting for MGO07_mapping_easy_exists"; end
./build/bin/snake_slam $msdmg_config_dt --dataset MGO07_mapping_easy/mav0/ --outDir resultsDET/MGO07/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MGO07/
./build/bin/snake_slam $msdmg_config_nd --dataset MGO07_mapping_easy/mav0/ --outDir resultsND1/MGO07/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MGO07/
./build/bin/snake_slam $msdmg_config_nd --dataset MGO07_mapping_easy/mav0/ --outDir resultsND2/MGO07/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MGO07/
rm -rf MGO07_mapping_easy MGO07_mapping_easy_exists

while not test -e MGO08_mapping_hard_exists; sleep 1; echo "waiting for MGO08_mapping_hard_exists"; end
./build/bin/snake_slam $msdmg_config_dt --dataset MGO08_mapping_hard/mav0/ --outDir resultsDET/MGO08/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MGO08/
./build/bin/snake_slam $msdmg_config_nd --dataset MGO08_mapping_hard/mav0/ --outDir resultsND1/MGO08/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MGO08/
./build/bin/snake_slam $msdmg_config_nd --dataset MGO08_mapping_hard/mav0/ --outDir resultsND2/MGO08/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MGO08/
rm -rf MGO08_mapping_hard MGO08_mapping_hard_exists

while not test -e MGO09_short_1_updown_exists; sleep 1; echo "waiting for MGO09_short_1_updown_exists"; end
./build/bin/snake_slam $msdmg_config_dt --dataset MGO09_short_1_updown/mav0/ --outDir resultsDET/MGO09/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MGO09/
./build/bin/snake_slam $msdmg_config_nd --dataset MGO09_short_1_updown/mav0/ --outDir resultsND1/MGO09/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MGO09/
./build/bin/snake_slam $msdmg_config_nd --dataset MGO09_short_1_updown/mav0/ --outDir resultsND2/MGO09/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MGO09/
rm -rf MGO09_short_1_updown MGO09_short_1_updown_exists

while not test -e MGO10_short_2_panorama_exists; sleep 1; echo "waiting for MGO10_short_2_panorama_exists"; end
./build/bin/snake_slam $msdmg_config_dt --dataset MGO10_short_2_panorama/mav0/ --outDir resultsDET/MGO10/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MGO10/
./build/bin/snake_slam $msdmg_config_nd --dataset MGO10_short_2_panorama/mav0/ --outDir resultsND1/MGO10/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MGO10/
./build/bin/snake_slam $msdmg_config_nd --dataset MGO10_short_2_panorama/mav0/ --outDir resultsND2/MGO10/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MGO10/
rm -rf MGO10_short_2_panorama MGO10_short_2_panorama_exists

while not test -e MGO11_short_3_backandforth_exists; sleep 1; echo "waiting for MGO11_short_3_backandforth_exists"; end
./build/bin/snake_slam $msdmg_config_dt --dataset MGO11_short_3_backandforth/mav0/ --outDir resultsDET/MGO11/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MGO11/
./build/bin/snake_slam $msdmg_config_nd --dataset MGO11_short_3_backandforth/mav0/ --outDir resultsND1/MGO11/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MGO11/
./build/bin/snake_slam $msdmg_config_nd --dataset MGO11_short_3_backandforth/mav0/ --outDir resultsND2/MGO11/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MGO11/
rm -rf MGO11_short_3_backandforth MGO11_short_3_backandforth_exists

while not test -e MGO12_freemovement_long_session_exists; sleep 1; echo "waiting for MGO12_freemovement_long_session_exists"; end
./build/bin/snake_slam $msdmg_config_dt --dataset MGO12_freemovement_long_session/mav0/ --outDir resultsDET/MGO12/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MGO12/
./build/bin/snake_slam $msdmg_config_nd --dataset MGO12_freemovement_long_session/mav0/ --outDir resultsND1/MGO12/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MGO12/
./build/bin/snake_slam $msdmg_config_nd --dataset MGO12_freemovement_long_session/mav0/ --outDir resultsND2/MGO12/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MGO12/
rm -rf MGO12_freemovement_long_session MGO12_freemovement_long_session_exists

while not test -e MGO13_sudden_movements_exists; sleep 1; echo "waiting for MGO13_sudden_movements_exists"; end
./build/bin/snake_slam $msdmg_config_dt --dataset MGO13_sudden_movements/mav0/ --outDir resultsDET/MGO13/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MGO13/
./build/bin/snake_slam $msdmg_config_nd --dataset MGO13_sudden_movements/mav0/ --outDir resultsND1/MGO13/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MGO13/
./build/bin/snake_slam $msdmg_config_nd --dataset MGO13_sudden_movements/mav0/ --outDir resultsND2/MGO13/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MGO13/
rm -rf MGO13_sudden_movements MGO13_sudden_movements_exists

while not test -e MGO14_flickering_light_exists; sleep 1; echo "waiting for MGO14_flickering_light_exists"; end
./build/bin/snake_slam $msdmg_config_dt --dataset MGO14_flickering_light/mav0/ --outDir resultsDET/MGO14/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MGO14/
./build/bin/snake_slam $msdmg_config_nd --dataset MGO14_flickering_light/mav0/ --outDir resultsND1/MGO14/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MGO14/
./build/bin/snake_slam $msdmg_config_nd --dataset MGO14_flickering_light/mav0/ --outDir resultsND2/MGO14/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MGO14/
rm -rf MGO14_flickering_light MGO14_flickering_light_exists

while not test -e MGO15_seated_screen_exists; sleep 1; echo "waiting for MGO15_seated_screen_exists"; end
./build/bin/snake_slam $msdmg_config_dt --dataset MGO15_seated_screen/mav0/ --outDir resultsDET/MGO15/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MGO15/
./build/bin/snake_slam $msdmg_config_nd --dataset MGO15_seated_screen/mav0/ --outDir resultsND1/MGO15/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MGO15/
./build/bin/snake_slam $msdmg_config_nd --dataset MGO15_seated_screen/mav0/ --outDir resultsND2/MGO15/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MGO15/
rm -rf MGO15_seated_screen MGO15_seated_screen_exists

while not test -e MIO01_hand_puncher_1_exists; sleep 1; echo "waiting for MIO01_hand_puncher_1_exists"; end
./build/bin/snake_slam $msdmi_config_dt --dataset MIO01_hand_puncher_1/mav0/ --outDir resultsDET/MIO01/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MIO01/
./build/bin/snake_slam $msdmi_config_nd --dataset MIO01_hand_puncher_1/mav0/ --outDir resultsND1/MIO01/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MIO01/
./build/bin/snake_slam $msdmi_config_nd --dataset MIO01_hand_puncher_1/mav0/ --outDir resultsND2/MIO01/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MIO01/
rm -rf MIO01_hand_puncher_1 MIO01_hand_puncher_1_exists

while not test -e MIO02_hand_puncher_2_exists; sleep 1; echo "waiting for MIO02_hand_puncher_2_exists"; end
./build/bin/snake_slam $msdmi_config_dt --dataset MIO02_hand_puncher_2/mav0/ --outDir resultsDET/MIO02/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MIO02/
./build/bin/snake_slam $msdmi_config_nd --dataset MIO02_hand_puncher_2/mav0/ --outDir resultsND1/MIO02/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MIO02/
./build/bin/snake_slam $msdmi_config_nd --dataset MIO02_hand_puncher_2/mav0/ --outDir resultsND2/MIO02/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MIO02/
rm -rf MIO02_hand_puncher_2 MIO02_hand_puncher_2_exists

while not test -e MIO03_hand_shooter_easy_exists; sleep 1; echo "waiting for MIO03_hand_shooter_easy_exists"; end
./build/bin/snake_slam $msdmi_config_dt --dataset MIO03_hand_shooter_easy/mav0/ --outDir resultsDET/MIO03/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MIO03/
./build/bin/snake_slam $msdmi_config_nd --dataset MIO03_hand_shooter_easy/mav0/ --outDir resultsND1/MIO03/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MIO03/
./build/bin/snake_slam $msdmi_config_nd --dataset MIO03_hand_shooter_easy/mav0/ --outDir resultsND2/MIO03/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MIO03/
rm -rf MIO03_hand_shooter_easy MIO03_hand_shooter_easy_exists

while not test -e MIO04_hand_shooter_hard_exists; sleep 1; echo "waiting for MIO04_hand_shooter_hard_exists"; end
./build/bin/snake_slam $msdmi_config_dt --dataset MIO04_hand_shooter_hard/mav0/ --outDir resultsDET/MIO04/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MIO04/
./build/bin/snake_slam $msdmi_config_nd --dataset MIO04_hand_shooter_hard/mav0/ --outDir resultsND1/MIO04/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MIO04/
./build/bin/snake_slam $msdmi_config_nd --dataset MIO04_hand_shooter_hard/mav0/ --outDir resultsND2/MIO04/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MIO04/
rm -rf MIO04_hand_shooter_hard MIO04_hand_shooter_hard_exists

while not test -e MIO05_inspect_easy_exists; sleep 1; echo "waiting for MIO05_inspect_easy_exists"; end
./build/bin/snake_slam $msdmi_config_dt --dataset MIO05_inspect_easy/mav0/ --outDir resultsDET/MIO05/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MIO05/
./build/bin/snake_slam $msdmi_config_nd --dataset MIO05_inspect_easy/mav0/ --outDir resultsND1/MIO05/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MIO05/
./build/bin/snake_slam $msdmi_config_nd --dataset MIO05_inspect_easy/mav0/ --outDir resultsND2/MIO05/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MIO05/
rm -rf MIO05_inspect_easy MIO05_inspect_easy_exists

while not test -e MIO06_inspect_hard_exists; sleep 1; echo "waiting for MIO06_inspect_hard_exists"; end
./build/bin/snake_slam $msdmi_config_dt --dataset MIO06_inspect_hard/mav0/ --outDir resultsDET/MIO06/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MIO06/
./build/bin/snake_slam $msdmi_config_nd --dataset MIO06_inspect_hard/mav0/ --outDir resultsND1/MIO06/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MIO06/
./build/bin/snake_slam $msdmi_config_nd --dataset MIO06_inspect_hard/mav0/ --outDir resultsND2/MIO06/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MIO06/
rm -rf MIO06_inspect_hard MIO06_inspect_hard_exists

while not test -e MIO07_mapping_easy_exists; sleep 1; echo "waiting for MIO07_mapping_easy_exists"; end
./build/bin/snake_slam $msdmi_config_dt --dataset MIO07_mapping_easy/mav0/ --outDir resultsDET/MIO07/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MIO07/
./build/bin/snake_slam $msdmi_config_nd --dataset MIO07_mapping_easy/mav0/ --outDir resultsND1/MIO07/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MIO07/
./build/bin/snake_slam $msdmi_config_nd --dataset MIO07_mapping_easy/mav0/ --outDir resultsND2/MIO07/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MIO07/
rm -rf MIO07_mapping_easy MIO07_mapping_easy_exists

while not test -e MIO08_mapping_hard_exists; sleep 1; echo "waiting for MIO08_mapping_hard_exists"; end
./build/bin/snake_slam $msdmi_config_dt --dataset MIO08_mapping_hard/mav0/ --outDir resultsDET/MIO08/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MIO08/
./build/bin/snake_slam $msdmi_config_nd --dataset MIO08_mapping_hard/mav0/ --outDir resultsND1/MIO08/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MIO08/
./build/bin/snake_slam $msdmi_config_nd --dataset MIO08_mapping_hard/mav0/ --outDir resultsND2/MIO08/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MIO08/
rm -rf MIO08_mapping_hard MIO08_mapping_hard_exists

while not test -e MIO09_short_1_updown_exists; sleep 1; echo "waiting for MIO09_short_1_updown_exists"; end
./build/bin/snake_slam $msdmi_config_dt --dataset MIO09_short_1_updown/mav0/ --outDir resultsDET/MIO09/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MIO09/
./build/bin/snake_slam $msdmi_config_nd --dataset MIO09_short_1_updown/mav0/ --outDir resultsND1/MIO09/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MIO09/
./build/bin/snake_slam $msdmi_config_nd --dataset MIO09_short_1_updown/mav0/ --outDir resultsND2/MIO09/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MIO09/
rm -rf MIO09_short_1_updown MIO09_short_1_updown_exists

while not test -e MIO10_short_2_panorama_exists; sleep 1; echo "waiting for MIO10_short_2_panorama_exists"; end
./build/bin/snake_slam $msdmi_config_dt --dataset MIO10_short_2_panorama/mav0/ --outDir resultsDET/MIO10/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MIO10/
./build/bin/snake_slam $msdmi_config_nd --dataset MIO10_short_2_panorama/mav0/ --outDir resultsND1/MIO10/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MIO10/
./build/bin/snake_slam $msdmi_config_nd --dataset MIO10_short_2_panorama/mav0/ --outDir resultsND2/MIO10/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MIO10/
rm -rf MIO10_short_2_panorama MIO10_short_2_panorama_exists

while not test -e MIO11_short_3_backandforth_exists; sleep 1; echo "waiting for MIO11_short_3_backandforth_exists"; end
./build/bin/snake_slam $msdmi_config_dt --dataset MIO11_short_3_backandforth/mav0/ --outDir resultsDET/MIO11/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MIO11/
./build/bin/snake_slam $msdmi_config_nd --dataset MIO11_short_3_backandforth/mav0/ --outDir resultsND1/MIO11/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MIO11/
./build/bin/snake_slam $msdmi_config_nd --dataset MIO11_short_3_backandforth/mav0/ --outDir resultsND2/MIO11/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MIO11/
rm -rf MIO11_short_3_backandforth MIO11_short_3_backandforth_exists

while not test -e MIO12_moving_screens_exists; sleep 1; echo "waiting for MIO12_moving_screens_exists"; end
./build/bin/snake_slam $msdmi_config_dt --dataset MIO12_moving_screens/mav0/ --outDir resultsDET/MIO12/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MIO12/
./build/bin/snake_slam $msdmi_config_nd --dataset MIO12_moving_screens/mav0/ --outDir resultsND1/MIO12/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MIO12/
./build/bin/snake_slam $msdmi_config_nd --dataset MIO12_moving_screens/mav0/ --outDir resultsND2/MIO12/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MIO12/
rm -rf MIO12_moving_screens MIO12_moving_screens_exists

while not test -e MIO13_moving_person_exists; sleep 1; echo "waiting for MIO13_moving_person_exists"; end
./build/bin/snake_slam $msdmi_config_dt --dataset MIO13_moving_person/mav0/ --outDir resultsDET/MIO13/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MIO13/
./build/bin/snake_slam $msdmi_config_nd --dataset MIO13_moving_person/mav0/ --outDir resultsND1/MIO13/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MIO13/
./build/bin/snake_slam $msdmi_config_nd --dataset MIO13_moving_person/mav0/ --outDir resultsND2/MIO13/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MIO13/
rm -rf MIO13_moving_person MIO13_moving_person_exists

while not test -e MIO14_moving_props_exists; sleep 1; echo "waiting for MIO14_moving_props_exists"; end
./build/bin/snake_slam $msdmi_config_dt --dataset MIO14_moving_props/mav0/ --outDir resultsDET/MIO14/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MIO14/
./build/bin/snake_slam $msdmi_config_nd --dataset MIO14_moving_props/mav0/ --outDir resultsND1/MIO14/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MIO14/
./build/bin/snake_slam $msdmi_config_nd --dataset MIO14_moving_props/mav0/ --outDir resultsND2/MIO14/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MIO14/
rm -rf MIO14_moving_props MIO14_moving_props_exists

while not test -e MIO15_moving_person_props_exists; sleep 1; echo "waiting for MIO15_moving_person_props_exists"; end
./build/bin/snake_slam $msdmi_config_dt --dataset MIO15_moving_person_props/mav0/ --outDir resultsDET/MIO15/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MIO15/
./build/bin/snake_slam $msdmi_config_nd --dataset MIO15_moving_person_props/mav0/ --outDir resultsND1/MIO15/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MIO15/
./build/bin/snake_slam $msdmi_config_nd --dataset MIO15_moving_person_props/mav0/ --outDir resultsND2/MIO15/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MIO15/
rm -rf MIO15_moving_person_props MIO15_moving_person_props_exists

while not test -e MIO16_moving_screens_person_props_exists; sleep 1; echo "waiting for MIO16_moving_screens_person_props_exists"; end
./build/bin/snake_slam $msdmi_config_dt --dataset MIO16_moving_screens_person_props/mav0/ --outDir resultsDET/MIO16/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MIO16/
./build/bin/snake_slam $msdmi_config_nd --dataset MIO16_moving_screens_person_props/mav0/ --outDir resultsND1/MIO16/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MIO16/
./build/bin/snake_slam $msdmi_config_nd --dataset MIO16_moving_screens_person_props/mav0/ --outDir resultsND2/MIO16/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MIO16/
rm -rf MIO16_moving_screens_person_props MIO16_moving_screens_person_props_exists

while not test -e MIPB01_beatsaber_100bills_360_normal_exists; sleep 1; echo "waiting for MIPB01_beatsaber_100bills_360_normal_exists"; end
./build/bin/snake_slam $msdmi_config_dt --dataset MIPB01_beatsaber_100bills_360_normal/mav0/ --outDir resultsDET/MIPB01/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MIPB01/
./build/bin/snake_slam $msdmi_config_nd --dataset MIPB01_beatsaber_100bills_360_normal/mav0/ --outDir resultsND1/MIPB01/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MIPB01/
./build/bin/snake_slam $msdmi_config_nd --dataset MIPB01_beatsaber_100bills_360_normal/mav0/ --outDir resultsND2/MIPB01/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MIPB01/
rm -rf MIPB01_beatsaber_100bills_360_normal MIPB01_beatsaber_100bills_360_normal_exists

while not test -e MIPB02_beatsaber_crabrave_360_hard_exists; sleep 1; echo "waiting for MIPB02_beatsaber_crabrave_360_hard_exists"; end
./build/bin/snake_slam $msdmi_config_dt --dataset MIPB02_beatsaber_crabrave_360_hard/mav0/ --outDir resultsDET/MIPB02/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MIPB02/
./build/bin/snake_slam $msdmi_config_nd --dataset MIPB02_beatsaber_crabrave_360_hard/mav0/ --outDir resultsND1/MIPB02/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MIPB02/
./build/bin/snake_slam $msdmi_config_nd --dataset MIPB02_beatsaber_crabrave_360_hard/mav0/ --outDir resultsND2/MIPB02/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MIPB02/
rm -rf MIPB02_beatsaber_crabrave_360_hard MIPB02_beatsaber_crabrave_360_hard_exists

while not test -e MIPB03_beatsaber_countryrounds_360_expert_exists; sleep 1; echo "waiting for MIPB03_beatsaber_countryrounds_360_expert_exists"; end
./build/bin/snake_slam $msdmi_config_dt --dataset MIPB03_beatsaber_countryrounds_360_expert/mav0/ --outDir resultsDET/MIPB03/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MIPB03/
./build/bin/snake_slam $msdmi_config_nd --dataset MIPB03_beatsaber_countryrounds_360_expert/mav0/ --outDir resultsND1/MIPB03/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MIPB03/
./build/bin/snake_slam $msdmi_config_nd --dataset MIPB03_beatsaber_countryrounds_360_expert/mav0/ --outDir resultsND2/MIPB03/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MIPB03/
rm -rf MIPB03_beatsaber_countryrounds_360_expert MIPB03_beatsaber_countryrounds_360_expert_exists

while not test -e MIPB04_beatsaber_fitbeat_hard_exists; sleep 1; echo "waiting for MIPB04_beatsaber_fitbeat_hard_exists"; end
./build/bin/snake_slam $msdmi_config_dt --dataset MIPB04_beatsaber_fitbeat_hard/mav0/ --outDir resultsDET/MIPB04/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MIPB04/
./build/bin/snake_slam $msdmi_config_nd --dataset MIPB04_beatsaber_fitbeat_hard/mav0/ --outDir resultsND1/MIPB04/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MIPB04/
./build/bin/snake_slam $msdmi_config_nd --dataset MIPB04_beatsaber_fitbeat_hard/mav0/ --outDir resultsND2/MIPB04/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MIPB04/
rm -rf MIPB04_beatsaber_fitbeat_hard MIPB04_beatsaber_fitbeat_hard_exists

while not test -e MIPB05_beatsaber_fitbeat_360_expert_exists; sleep 1; echo "waiting for MIPB05_beatsaber_fitbeat_360_expert_exists"; end
./build/bin/snake_slam $msdmi_config_dt --dataset MIPB05_beatsaber_fitbeat_360_expert/mav0/ --outDir resultsDET/MIPB05/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MIPB05/
./build/bin/snake_slam $msdmi_config_nd --dataset MIPB05_beatsaber_fitbeat_360_expert/mav0/ --outDir resultsND1/MIPB05/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MIPB05/
./build/bin/snake_slam $msdmi_config_nd --dataset MIPB05_beatsaber_fitbeat_360_expert/mav0/ --outDir resultsND2/MIPB05/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MIPB05/
rm -rf MIPB05_beatsaber_fitbeat_360_expert MIPB05_beatsaber_fitbeat_360_expert_exists

while not test -e MIPB06_beatsaber_fitbeat_expertplus_1_exists; sleep 1; echo "waiting for MIPB06_beatsaber_fitbeat_expertplus_1_exists"; end
./build/bin/snake_slam $msdmi_config_dt --dataset MIPB06_beatsaber_fitbeat_expertplus_1/mav0/ --outDir resultsDET/MIPB06/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MIPB06/
./build/bin/snake_slam $msdmi_config_nd --dataset MIPB06_beatsaber_fitbeat_expertplus_1/mav0/ --outDir resultsND1/MIPB06/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MIPB06/
./build/bin/snake_slam $msdmi_config_nd --dataset MIPB06_beatsaber_fitbeat_expertplus_1/mav0/ --outDir resultsND2/MIPB06/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MIPB06/
rm -rf MIPB06_beatsaber_fitbeat_expertplus_1 MIPB06_beatsaber_fitbeat_expertplus_1_exists

while not test -e MIPB07_beatsaber_fitbeat_expertplus_2_exists; sleep 1; echo "waiting for MIPB07_beatsaber_fitbeat_expertplus_2_exists"; end
./build/bin/snake_slam $msdmi_config_dt --dataset MIPB07_beatsaber_fitbeat_expertplus_2/mav0/ --outDir resultsDET/MIPB07/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MIPB07/
./build/bin/snake_slam $msdmi_config_nd --dataset MIPB07_beatsaber_fitbeat_expertplus_2/mav0/ --outDir resultsND1/MIPB07/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MIPB07/
./build/bin/snake_slam $msdmi_config_nd --dataset MIPB07_beatsaber_fitbeat_expertplus_2/mav0/ --outDir resultsND2/MIPB07/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MIPB07/
rm -rf MIPB07_beatsaber_fitbeat_expertplus_2 MIPB07_beatsaber_fitbeat_expertplus_2_exists

while not test -e MIPB08_beatsaber_long_session_1_exists; sleep 1; echo "waiting for MIPB08_beatsaber_long_session_1_exists"; end
./build/bin/snake_slam $msdmi_config_dt --dataset MIPB08_beatsaber_long_session_1/mav0/ --outDir resultsDET/MIPB08/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MIPB08/
./build/bin/snake_slam $msdmi_config_nd --dataset MIPB08_beatsaber_long_session_1/mav0/ --outDir resultsND1/MIPB08/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MIPB08/
./build/bin/snake_slam $msdmi_config_nd --dataset MIPB08_beatsaber_long_session_1/mav0/ --outDir resultsND2/MIPB08/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MIPB08/
rm -rf MIPB08_beatsaber_long_session_1 MIPB08_beatsaber_long_session_1_exists

while not test -e MIPP01_pistolwhip_blackmagic_hard_exists; sleep 1; echo "waiting for MIPP01_pistolwhip_blackmagic_hard_exists"; end
./build/bin/snake_slam $msdmi_config_dt --dataset MIPP01_pistolwhip_blackmagic_hard/mav0/ --outDir resultsDET/MIPP01/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MIPP01/
./build/bin/snake_slam $msdmi_config_nd --dataset MIPP01_pistolwhip_blackmagic_hard/mav0/ --outDir resultsND1/MIPP01/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MIPP01/
./build/bin/snake_slam $msdmi_config_nd --dataset MIPP01_pistolwhip_blackmagic_hard/mav0/ --outDir resultsND2/MIPP01/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MIPP01/
rm -rf MIPP01_pistolwhip_blackmagic_hard MIPP01_pistolwhip_blackmagic_hard_exists

while not test -e MIPP02_pistolwhip_lilith_hard_exists; sleep 1; echo "waiting for MIPP02_pistolwhip_lilith_hard_exists"; end
./build/bin/snake_slam $msdmi_config_dt --dataset MIPP02_pistolwhip_lilith_hard/mav0/ --outDir resultsDET/MIPP02/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MIPP02/
./build/bin/snake_slam $msdmi_config_nd --dataset MIPP02_pistolwhip_lilith_hard/mav0/ --outDir resultsND1/MIPP02/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MIPP02/
./build/bin/snake_slam $msdmi_config_nd --dataset MIPP02_pistolwhip_lilith_hard/mav0/ --outDir resultsND2/MIPP02/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MIPP02/
rm -rf MIPP02_pistolwhip_lilith_hard MIPP02_pistolwhip_lilith_hard_exists

while not test -e MIPP03_pistolwhip_requiem_hard_exists; sleep 1; echo "waiting for MIPP03_pistolwhip_requiem_hard_exists"; end
./build/bin/snake_slam $msdmi_config_dt --dataset MIPP03_pistolwhip_requiem_hard/mav0/ --outDir resultsDET/MIPP03/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MIPP03/
./build/bin/snake_slam $msdmi_config_nd --dataset MIPP03_pistolwhip_requiem_hard/mav0/ --outDir resultsND1/MIPP03/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MIPP03/
./build/bin/snake_slam $msdmi_config_nd --dataset MIPP03_pistolwhip_requiem_hard/mav0/ --outDir resultsND2/MIPP03/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MIPP03/
rm -rf MIPP03_pistolwhip_requiem_hard MIPP03_pistolwhip_requiem_hard_exists

while not test -e MIPP04_pistolwhip_revelations_hard_exists; sleep 1; echo "waiting for MIPP04_pistolwhip_revelations_hard_exists"; end
./build/bin/snake_slam $msdmi_config_dt --dataset MIPP04_pistolwhip_revelations_hard/mav0/ --outDir resultsDET/MIPP04/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MIPP04/
./build/bin/snake_slam $msdmi_config_nd --dataset MIPP04_pistolwhip_revelations_hard/mav0/ --outDir resultsND1/MIPP04/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MIPP04/
./build/bin/snake_slam $msdmi_config_nd --dataset MIPP04_pistolwhip_revelations_hard/mav0/ --outDir resultsND2/MIPP04/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MIPP04/
rm -rf MIPP04_pistolwhip_revelations_hard MIPP04_pistolwhip_revelations_hard_exists

while not test -e MIPP05_pistolwhip_thefall_hard_2pistols_exists; sleep 1; echo "waiting for MIPP05_pistolwhip_thefall_hard_2pistols_exists"; end
./build/bin/snake_slam $msdmi_config_dt --dataset MIPP05_pistolwhip_thefall_hard_2pistols/mav0/ --outDir resultsDET/MIPP05/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MIPP05/
./build/bin/snake_slam $msdmi_config_nd --dataset MIPP05_pistolwhip_thefall_hard_2pistols/mav0/ --outDir resultsND1/MIPP05/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MIPP05/
./build/bin/snake_slam $msdmi_config_nd --dataset MIPP05_pistolwhip_thefall_hard_2pistols/mav0/ --outDir resultsND2/MIPP05/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MIPP05/
rm -rf MIPP05_pistolwhip_thefall_hard_2pistols MIPP05_pistolwhip_thefall_hard_2pistols_exists

while not test -e MIPP06_pistolwhip_thegrave_hard_exists; sleep 1; echo "waiting for MIPP06_pistolwhip_thegrave_hard_exists"; end
./build/bin/snake_slam $msdmi_config_dt --dataset MIPP06_pistolwhip_thegrave_hard/mav0/ --outDir resultsDET/MIPP06/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MIPP06/
./build/bin/snake_slam $msdmi_config_nd --dataset MIPP06_pistolwhip_thegrave_hard/mav0/ --outDir resultsND1/MIPP06/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MIPP06/
./build/bin/snake_slam $msdmi_config_nd --dataset MIPP06_pistolwhip_thegrave_hard/mav0/ --outDir resultsND2/MIPP06/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MIPP06/
./build/bin/snake_slam $msdmi_config_dt --dataset MIPP06_pistolwhip_thegrave_hard/mav0/ --outDir resultsDCK/MIPP06/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDCK/MIPP06/
rm -rf MIPP06_pistolwhip_thegrave_hard MIPP06_pistolwhip_thegrave_hard_exists

while not test -e MIPT01_thrillofthefight_setup_exists; sleep 1; echo "waiting for MIPT01_thrillofthefight_setup_exists"; end
./build/bin/snake_slam $msdmi_config_dt --dataset MIPT01_thrillofthefight_setup/mav0/ --outDir resultsDET/MIPT01/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MIPT01/
./build/bin/snake_slam $msdmi_config_nd --dataset MIPT01_thrillofthefight_setup/mav0/ --outDir resultsND1/MIPT01/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MIPT01/
./build/bin/snake_slam $msdmi_config_nd --dataset MIPT01_thrillofthefight_setup/mav0/ --outDir resultsND2/MIPT01/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MIPT01/
rm -rf MIPT01_thrillofthefight_setup MIPT01_thrillofthefight_setup_exists

while not test -e MIPT02_thrillofthefight_fight_1_exists; sleep 1; echo "waiting for MIPT02_thrillofthefight_fight_1_exists"; end
./build/bin/snake_slam $msdmi_config_dt --dataset MIPT02_thrillofthefight_fight_1/mav0/ --outDir resultsDET/MIPT02/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MIPT02/
./build/bin/snake_slam $msdmi_config_nd --dataset MIPT02_thrillofthefight_fight_1/mav0/ --outDir resultsND1/MIPT02/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MIPT02/
./build/bin/snake_slam $msdmi_config_nd --dataset MIPT02_thrillofthefight_fight_1/mav0/ --outDir resultsND2/MIPT02/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MIPT02/
rm -rf MIPT02_thrillofthefight_fight_1 MIPT02_thrillofthefight_fight_1_exists

while not test -e MIPT03_thrillofthefight_fight_2_exists; sleep 1; echo "waiting for MIPT03_thrillofthefight_fight_2_exists"; end
./build/bin/snake_slam $msdmi_config_dt --dataset MIPT03_thrillofthefight_fight_2/mav0/ --outDir resultsDET/MIPT03/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MIPT03/
./build/bin/snake_slam $msdmi_config_nd --dataset MIPT03_thrillofthefight_fight_2/mav0/ --outDir resultsND1/MIPT03/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MIPT03/
./build/bin/snake_slam $msdmi_config_nd --dataset MIPT03_thrillofthefight_fight_2/mav0/ --outDir resultsND2/MIPT03/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MIPT03/
rm -rf MIPT03_thrillofthefight_fight_2 MIPT03_thrillofthefight_fight_2_exists

while not test -e MOO01_hand_puncher_1_exists; sleep 1; echo "waiting for MOO01_hand_puncher_1_exists"; end
./build/bin/snake_slam $msdmo_config_dt --dataset MOO01_hand_puncher_1/mav0/ --outDir resultsDET/MOO01/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MOO01/
./build/bin/snake_slam $msdmo_config_nd --dataset MOO01_hand_puncher_1/mav0/ --outDir resultsND1/MOO01/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MOO01/
./build/bin/snake_slam $msdmo_config_nd --dataset MOO01_hand_puncher_1/mav0/ --outDir resultsND2/MOO01/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MOO01/
rm -rf MOO01_hand_puncher_1 MOO01_hand_puncher_1_exists

while not test -e MOO02_hand_puncher_2_exists; sleep 1; echo "waiting for MOO02_hand_puncher_2_exists"; end
./build/bin/snake_slam $msdmo_config_dt --dataset MOO02_hand_puncher_2/mav0/ --outDir resultsDET/MOO02/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MOO02/
./build/bin/snake_slam $msdmo_config_nd --dataset MOO02_hand_puncher_2/mav0/ --outDir resultsND1/MOO02/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MOO02/
./build/bin/snake_slam $msdmo_config_nd --dataset MOO02_hand_puncher_2/mav0/ --outDir resultsND2/MOO02/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MOO02/
rm -rf MOO02_hand_puncher_2 MOO02_hand_puncher_2_exists

while not test -e MOO03_hand_shooter_easy_exists; sleep 1; echo "waiting for MOO03_hand_shooter_easy_exists"; end
./build/bin/snake_slam $msdmo_config_dt --dataset MOO03_hand_shooter_easy/mav0/ --outDir resultsDET/MOO03/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MOO03/
./build/bin/snake_slam $msdmo_config_nd --dataset MOO03_hand_shooter_easy/mav0/ --outDir resultsND1/MOO03/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MOO03/
./build/bin/snake_slam $msdmo_config_nd --dataset MOO03_hand_shooter_easy/mav0/ --outDir resultsND2/MOO03/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MOO03/
rm -rf MOO03_hand_shooter_easy MOO03_hand_shooter_easy_exists

while not test -e MOO04_hand_shooter_hard_exists; sleep 1; echo "waiting for MOO04_hand_shooter_hard_exists"; end
./build/bin/snake_slam $msdmo_config_dt --dataset MOO04_hand_shooter_hard/mav0/ --outDir resultsDET/MOO04/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MOO04/
./build/bin/snake_slam $msdmo_config_nd --dataset MOO04_hand_shooter_hard/mav0/ --outDir resultsND1/MOO04/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MOO04/
./build/bin/snake_slam $msdmo_config_nd --dataset MOO04_hand_shooter_hard/mav0/ --outDir resultsND2/MOO04/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MOO04/
rm -rf MOO04_hand_shooter_hard MOO04_hand_shooter_hard_exists

while not test -e MOO05_inspect_easy_exists; sleep 1; echo "waiting for MOO05_inspect_easy_exists"; end
./build/bin/snake_slam $msdmo_config_dt --dataset MOO05_inspect_easy/mav0/ --outDir resultsDET/MOO05/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MOO05/
./build/bin/snake_slam $msdmo_config_nd --dataset MOO05_inspect_easy/mav0/ --outDir resultsND1/MOO05/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MOO05/
./build/bin/snake_slam $msdmo_config_nd --dataset MOO05_inspect_easy/mav0/ --outDir resultsND2/MOO05/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MOO05/
rm -rf MOO05_inspect_easy MOO05_inspect_easy_exists

while not test -e MOO06_inspect_hard_exists; sleep 1; echo "waiting for MOO06_inspect_hard_exists"; end
./build/bin/snake_slam $msdmo_config_dt --dataset MOO06_inspect_hard/mav0/ --outDir resultsDET/MOO06/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MOO06/
./build/bin/snake_slam $msdmo_config_nd --dataset MOO06_inspect_hard/mav0/ --outDir resultsND1/MOO06/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MOO06/
./build/bin/snake_slam $msdmo_config_nd --dataset MOO06_inspect_hard/mav0/ --outDir resultsND2/MOO06/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MOO06/
rm -rf MOO06_inspect_hard MOO06_inspect_hard_exists

while not test -e MOO07_mapping_easy_exists; sleep 1; echo "waiting for MOO07_mapping_easy_exists"; end
./build/bin/snake_slam $msdmo_config_dt --dataset MOO07_mapping_easy/mav0/ --outDir resultsDET/MOO07/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MOO07/
./build/bin/snake_slam $msdmo_config_nd --dataset MOO07_mapping_easy/mav0/ --outDir resultsND1/MOO07/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MOO07/
./build/bin/snake_slam $msdmo_config_nd --dataset MOO07_mapping_easy/mav0/ --outDir resultsND2/MOO07/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MOO07/
rm -rf MOO07_mapping_easy MOO07_mapping_easy_exists

while not test -e MOO08_mapping_hard_exists; sleep 1; echo "waiting for MOO08_mapping_hard_exists"; end
./build/bin/snake_slam $msdmo_config_dt --dataset MOO08_mapping_hard/mav0/ --outDir resultsDET/MOO08/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MOO08/
./build/bin/snake_slam $msdmo_config_nd --dataset MOO08_mapping_hard/mav0/ --outDir resultsND1/MOO08/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MOO08/
./build/bin/snake_slam $msdmo_config_nd --dataset MOO08_mapping_hard/mav0/ --outDir resultsND2/MOO08/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MOO08/
rm -rf MOO08_mapping_hard MOO08_mapping_hard_exists

while not test -e MOO09_short_1_updown_exists; sleep 1; echo "waiting for MOO09_short_1_updown_exists"; end
./build/bin/snake_slam $msdmo_config_dt --dataset MOO09_short_1_updown/mav0/ --outDir resultsDET/MOO09/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MOO09/
./build/bin/snake_slam $msdmo_config_nd --dataset MOO09_short_1_updown/mav0/ --outDir resultsND1/MOO09/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MOO09/
./build/bin/snake_slam $msdmo_config_nd --dataset MOO09_short_1_updown/mav0/ --outDir resultsND2/MOO09/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MOO09/
./build/bin/snake_slam $msdmo_config_dt --dataset MOO09_short_1_updown/mav0/ --outDir resultsDCK/MOO09/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDCK/MOO09/
rm -rf MOO09_short_1_updown MOO09_short_1_updown_exists

while not test -e MOO10_short_2_panorama_exists; sleep 1; echo "waiting for MOO10_short_2_panorama_exists"; end
./build/bin/snake_slam $msdmo_config_dt --dataset MOO10_short_2_panorama/mav0/ --outDir resultsDET/MOO10/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MOO10/
./build/bin/snake_slam $msdmo_config_nd --dataset MOO10_short_2_panorama/mav0/ --outDir resultsND1/MOO10/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MOO10/
./build/bin/snake_slam $msdmo_config_nd --dataset MOO10_short_2_panorama/mav0/ --outDir resultsND2/MOO10/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MOO10/
rm -rf MOO10_short_2_panorama MOO10_short_2_panorama_exists

while not test -e MOO11_short_3_backandforth_exists; sleep 1; echo "waiting for MOO11_short_3_backandforth_exists"; end
./build/bin/snake_slam $msdmo_config_dt --dataset MOO11_short_3_backandforth/mav0/ --outDir resultsDET/MOO11/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MOO11/
./build/bin/snake_slam $msdmo_config_nd --dataset MOO11_short_3_backandforth/mav0/ --outDir resultsND1/MOO11/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MOO11/
./build/bin/snake_slam $msdmo_config_nd --dataset MOO11_short_3_backandforth/mav0/ --outDir resultsND2/MOO11/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MOO11/
rm -rf MOO11_short_3_backandforth MOO11_short_3_backandforth_exists

while not test -e MOO12_freemovement_long_session_exists; sleep 1; echo "waiting for MOO12_freemovement_long_session_exists"; end
./build/bin/snake_slam $msdmo_config_dt --dataset MOO12_freemovement_long_session/mav0/ --outDir resultsDET/MOO12/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MOO12/
./build/bin/snake_slam $msdmo_config_nd --dataset MOO12_freemovement_long_session/mav0/ --outDir resultsND1/MOO12/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MOO12/
./build/bin/snake_slam $msdmo_config_nd --dataset MOO12_freemovement_long_session/mav0/ --outDir resultsND2/MOO12/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MOO12/
rm -rf MOO12_freemovement_long_session MOO12_freemovement_long_session_exists

while not test -e MOO13_sudden_movements_exists; sleep 1; echo "waiting for MOO13_sudden_movements_exists"; end
./build/bin/snake_slam $msdmo_config_dt --dataset MOO13_sudden_movements/mav0/ --outDir resultsDET/MOO13/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MOO13/
./build/bin/snake_slam $msdmo_config_nd --dataset MOO13_sudden_movements/mav0/ --outDir resultsND1/MOO13/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MOO13/
./build/bin/snake_slam $msdmo_config_nd --dataset MOO13_sudden_movements/mav0/ --outDir resultsND2/MOO13/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MOO13/
./build/bin/snake_slam $msdmo_config_dt --dataset MOO13_sudden_movements/mav0/ --outDir resultsDCK/MOO13/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDCK/MOO13/
rm -rf MOO13_sudden_movements MOO13_sudden_movements_exists

while not test -e MOO14_flickering_light_exists; sleep 1; echo "waiting for MOO14_flickering_light_exists"; end
./build/bin/snake_slam $msdmo_config_dt --dataset MOO14_flickering_light/mav0/ --outDir resultsDET/MOO14/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MOO14/
./build/bin/snake_slam $msdmo_config_nd --dataset MOO14_flickering_light/mav0/ --outDir resultsND1/MOO14/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MOO14/
./build/bin/snake_slam $msdmo_config_nd --dataset MOO14_flickering_light/mav0/ --outDir resultsND2/MOO14/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MOO14/
rm -rf MOO14_flickering_light MOO14_flickering_light_exists

while not test -e MOO15_seated_screen_exists; sleep 1; echo "waiting for MOO15_seated_screen_exists"; end
./build/bin/snake_slam $msdmo_config_dt --dataset MOO15_seated_screen/mav0/ --outDir resultsDET/MOO15/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MOO15/
./build/bin/snake_slam $msdmo_config_nd --dataset MOO15_seated_screen/mav0/ --outDir resultsND1/MOO15/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MOO15/
./build/bin/snake_slam $msdmo_config_nd --dataset MOO15_seated_screen/mav0/ --outDir resultsND2/MOO15/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MOO15/
rm -rf MOO15_seated_screen MOO15_seated_screen_exists

while not test -e MOO16_still_exists; sleep 1; echo "waiting for MOO16_still_exists"; end
./build/bin/snake_slam $msdmo_config_dt --dataset MOO16_still/mav0/ --outDir resultsDET/MOO16/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MOO16/
./build/bin/snake_slam $msdmo_config_nd --dataset MOO16_still/mav0/ --outDir resultsND1/MOO16/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MOO16/
./build/bin/snake_slam $msdmo_config_nd --dataset MOO16_still/mav0/ --outDir resultsND2/MOO16/ 2>&1 | tee output.log; mv in.csv out.csv output.log resultsDET/MOO16/
rm -rf MOO16_still MOO16_still_exists
