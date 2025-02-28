#!/usr/bin/env fish
export msd=/storage/local/hdd/monado-slam-datasets

function wait_space_for_file
      set -l filename $argv[1]  # The first argument is the filename to wait for space for
      #  set -l mount_point $argv[2]  # The second argument is the mount point to check
      set -l mount_point /dev/mapper/volumes-storage
      #  set -l command (string join " " $argv[3..-1])  # The rest of the arguments make up the command

       set -l kilobytes (math (stat -c%s $filename) / 1024)
       set -l kilobytes (math ceil $kilobytes)
       set -l kilobytes (math $kilobytes + 50000000) # Add some padding space for multipart zips (50GB)
       while true
               set -l available (df $mount_point | awk 'NR==2 {print $4}')
               if test $available -ge $kilobytes
                       echo "Sufficient space available, continuing..."
                      #  eval $command
                       break
                   else
                       echo "Waiting for sufficient space... (Currently: $available KB available but need $kilobytes KB)"
                       sleep 1  # Wait 60 seconds before checking again
                   end
           end
end

export filename=$msd/M_monado_datasets/MI_valve_index/MIO_others/MIO01_hand_puncher_1.zip
wait_space_for_file $filename
7z x -y $filename
cp configs/msd/msdmi/msdmi_cam0_sensor.yaml MIO01_hand_puncher_1/mav0/cam0/sensor.yaml
cp configs/msd/msdmi/msdmi_cam1_sensor.yaml MIO01_hand_puncher_1/mav0/cam1/sensor.yaml
cp configs/msd/msdmi/msdmi_imu0_sensor.yaml MIO01_hand_puncher_1/mav0/imu0/sensor.yaml
cp configs/msd/msdmi/msdmi_gt_sensor.yaml MIO01_hand_puncher_1/mav0/gt/sensor.yaml
mv MIO01_hand_puncher_1/mav0/gt MIO01_hand_puncher_1/mav0/state_groundtruth_estimate0
touch MIO01_hand_puncher_1_exists

export filename=$msd/M_monado_datasets/MI_valve_index/MIO_others/MIO02_hand_puncher_2.zip
wait_space_for_file $filename
7z x -y $filename
cp configs/msd/msdmi/msdmi_cam0_sensor.yaml MIO02_hand_puncher_2/mav0/cam0/sensor.yaml
cp configs/msd/msdmi/msdmi_cam1_sensor.yaml MIO02_hand_puncher_2/mav0/cam1/sensor.yaml
cp configs/msd/msdmi/msdmi_imu0_sensor.yaml MIO02_hand_puncher_2/mav0/imu0/sensor.yaml
cp configs/msd/msdmi/msdmi_gt_sensor.yaml MIO02_hand_puncher_2/mav0/gt/sensor.yaml
mv MIO02_hand_puncher_2/mav0/gt MIO02_hand_puncher_2/mav0/state_groundtruth_estimate0
touch MIO02_hand_puncher_2_exists

export filename=$msd/M_monado_datasets/MI_valve_index/MIO_others/MIO03_hand_shooter_easy.zip
wait_space_for_file $filename
7z x -y $filename
cp configs/msd/msdmi/msdmi_cam0_sensor.yaml MIO03_hand_shooter_easy/mav0/cam0/sensor.yaml
cp configs/msd/msdmi/msdmi_cam1_sensor.yaml MIO03_hand_shooter_easy/mav0/cam1/sensor.yaml
cp configs/msd/msdmi/msdmi_imu0_sensor.yaml MIO03_hand_shooter_easy/mav0/imu0/sensor.yaml
cp configs/msd/msdmi/msdmi_gt_sensor.yaml MIO03_hand_shooter_easy/mav0/gt/sensor.yaml
mv MIO03_hand_shooter_easy/mav0/gt MIO03_hand_shooter_easy/mav0/state_groundtruth_estimate0
touch MIO03_hand_shooter_easy_exists

export filename=$msd/M_monado_datasets/MI_valve_index/MIO_others/MIO04_hand_shooter_hard.zip
wait_space_for_file $filename
7z x -y $filename
cp configs/msd/msdmi/msdmi_cam0_sensor.yaml MIO04_hand_shooter_hard/mav0/cam0/sensor.yaml
cp configs/msd/msdmi/msdmi_cam1_sensor.yaml MIO04_hand_shooter_hard/mav0/cam1/sensor.yaml
cp configs/msd/msdmi/msdmi_imu0_sensor.yaml MIO04_hand_shooter_hard/mav0/imu0/sensor.yaml
cp configs/msd/msdmi/msdmi_gt_sensor.yaml MIO04_hand_shooter_hard/mav0/gt/sensor.yaml
mv MIO04_hand_shooter_hard/mav0/gt MIO04_hand_shooter_hard/mav0/state_groundtruth_estimate0
touch MIO04_hand_shooter_hard_exists

export filename=$msd/M_monado_datasets/MI_valve_index/MIO_others/MIO05_inspect_easy.zip
wait_space_for_file $filename
7z x -y $filename
cp configs/msd/msdmi/msdmi_cam0_sensor.yaml MIO05_inspect_easy/mav0/cam0/sensor.yaml
cp configs/msd/msdmi/msdmi_cam1_sensor.yaml MIO05_inspect_easy/mav0/cam1/sensor.yaml
cp configs/msd/msdmi/msdmi_imu0_sensor.yaml MIO05_inspect_easy/mav0/imu0/sensor.yaml
cp configs/msd/msdmi/msdmi_gt_sensor.yaml MIO05_inspect_easy/mav0/gt/sensor.yaml
mv MIO05_inspect_easy/mav0/gt MIO05_inspect_easy/mav0/state_groundtruth_estimate0
touch MIO05_inspect_easy_exists

export filename=$msd/M_monado_datasets/MI_valve_index/MIO_others/MIO06_inspect_hard.zip
wait_space_for_file $filename
7z x -y $filename
cp configs/msd/msdmi/msdmi_cam0_sensor.yaml MIO06_inspect_hard/mav0/cam0/sensor.yaml
cp configs/msd/msdmi/msdmi_cam1_sensor.yaml MIO06_inspect_hard/mav0/cam1/sensor.yaml
cp configs/msd/msdmi/msdmi_imu0_sensor.yaml MIO06_inspect_hard/mav0/imu0/sensor.yaml
cp configs/msd/msdmi/msdmi_gt_sensor.yaml MIO06_inspect_hard/mav0/gt/sensor.yaml
mv MIO06_inspect_hard/mav0/gt MIO06_inspect_hard/mav0/state_groundtruth_estimate0
touch MIO06_inspect_hard_exists

export filename=$msd/M_monado_datasets/MI_valve_index/MIO_others/MIO07_mapping_easy.zip
wait_space_for_file $filename
7z x -y $filename
cp configs/msd/msdmi/msdmi_cam0_sensor.yaml MIO07_mapping_easy/mav0/cam0/sensor.yaml
cp configs/msd/msdmi/msdmi_cam1_sensor.yaml MIO07_mapping_easy/mav0/cam1/sensor.yaml
cp configs/msd/msdmi/msdmi_imu0_sensor.yaml MIO07_mapping_easy/mav0/imu0/sensor.yaml
cp configs/msd/msdmi/msdmi_gt_sensor.yaml MIO07_mapping_easy/mav0/gt/sensor.yaml
mv MIO07_mapping_easy/mav0/gt MIO07_mapping_easy/mav0/state_groundtruth_estimate0
touch MIO07_mapping_easy_exists

export filename=$msd/M_monado_datasets/MI_valve_index/MIO_others/MIO08_mapping_hard.zip
wait_space_for_file $filename
7z x -y $filename
cp configs/msd/msdmi/msdmi_cam0_sensor.yaml MIO08_mapping_hard/mav0/cam0/sensor.yaml
cp configs/msd/msdmi/msdmi_cam1_sensor.yaml MIO08_mapping_hard/mav0/cam1/sensor.yaml
cp configs/msd/msdmi/msdmi_imu0_sensor.yaml MIO08_mapping_hard/mav0/imu0/sensor.yaml
cp configs/msd/msdmi/msdmi_gt_sensor.yaml MIO08_mapping_hard/mav0/gt/sensor.yaml
mv MIO08_mapping_hard/mav0/gt MIO08_mapping_hard/mav0/state_groundtruth_estimate0
touch MIO08_mapping_hard_exists

export filename=$msd/M_monado_datasets/MI_valve_index/MIO_others/MIO09_short_1_updown.zip
wait_space_for_file $filename
7z x -y $filename
cp configs/msd/msdmi/msdmi_cam0_sensor.yaml MIO09_short_1_updown/mav0/cam0/sensor.yaml
cp configs/msd/msdmi/msdmi_cam1_sensor.yaml MIO09_short_1_updown/mav0/cam1/sensor.yaml
cp configs/msd/msdmi/msdmi_imu0_sensor.yaml MIO09_short_1_updown/mav0/imu0/sensor.yaml
cp configs/msd/msdmi/msdmi_gt_sensor.yaml MIO09_short_1_updown/mav0/gt/sensor.yaml
mv MIO09_short_1_updown/mav0/gt MIO09_short_1_updown/mav0/state_groundtruth_estimate0
touch MIO09_short_1_updown_exists

export filename=$msd/M_monado_datasets/MI_valve_index/MIO_others/MIO10_short_2_panorama.zip
wait_space_for_file $filename
7z x -y $filename
cp configs/msd/msdmi/msdmi_cam0_sensor.yaml MIO10_short_2_panorama/mav0/cam0/sensor.yaml
cp configs/msd/msdmi/msdmi_cam1_sensor.yaml MIO10_short_2_panorama/mav0/cam1/sensor.yaml
cp configs/msd/msdmi/msdmi_imu0_sensor.yaml MIO10_short_2_panorama/mav0/imu0/sensor.yaml
cp configs/msd/msdmi/msdmi_gt_sensor.yaml MIO10_short_2_panorama/mav0/gt/sensor.yaml
mv MIO10_short_2_panorama/mav0/gt MIO10_short_2_panorama/mav0/state_groundtruth_estimate0
touch MIO10_short_2_panorama_exists

export filename=$msd/M_monado_datasets/MI_valve_index/MIO_others/MIO11_short_3_backandforth.zip
wait_space_for_file $filename
7z x -y $filename
cp configs/msd/msdmi/msdmi_cam0_sensor.yaml MIO11_short_3_backandforth/mav0/cam0/sensor.yaml
cp configs/msd/msdmi/msdmi_cam1_sensor.yaml MIO11_short_3_backandforth/mav0/cam1/sensor.yaml
cp configs/msd/msdmi/msdmi_imu0_sensor.yaml MIO11_short_3_backandforth/mav0/imu0/sensor.yaml
cp configs/msd/msdmi/msdmi_gt_sensor.yaml MIO11_short_3_backandforth/mav0/gt/sensor.yaml
mv MIO11_short_3_backandforth/mav0/gt MIO11_short_3_backandforth/mav0/state_groundtruth_estimate0
touch MIO11_short_3_backandforth_exists

export filename=$msd/M_monado_datasets/MI_valve_index/MIO_others/MIO12_moving_screens.zip
wait_space_for_file $filename
7z x -y $filename
cp configs/msd/msdmi/msdmi_cam0_sensor.yaml MIO12_moving_screens/mav0/cam0/sensor.yaml
cp configs/msd/msdmi/msdmi_cam1_sensor.yaml MIO12_moving_screens/mav0/cam1/sensor.yaml
cp configs/msd/msdmi/msdmi_imu0_sensor.yaml MIO12_moving_screens/mav0/imu0/sensor.yaml
cp configs/msd/msdmi/msdmi_gt_sensor.yaml MIO12_moving_screens/mav0/gt/sensor.yaml
mv MIO12_moving_screens/mav0/gt MIO12_moving_screens/mav0/state_groundtruth_estimate0
touch MIO12_moving_screens_exists

export filename=$msd/M_monado_datasets/MI_valve_index/MIO_others/MIO13_moving_person.zip
wait_space_for_file $filename
7z x -y $filename
cp configs/msd/msdmi/msdmi_cam0_sensor.yaml MIO13_moving_person/mav0/cam0/sensor.yaml
cp configs/msd/msdmi/msdmi_cam1_sensor.yaml MIO13_moving_person/mav0/cam1/sensor.yaml
cp configs/msd/msdmi/msdmi_imu0_sensor.yaml MIO13_moving_person/mav0/imu0/sensor.yaml
cp configs/msd/msdmi/msdmi_gt_sensor.yaml MIO13_moving_person/mav0/gt/sensor.yaml
mv MIO13_moving_person/mav0/gt MIO13_moving_person/mav0/state_groundtruth_estimate0
touch MIO13_moving_person_exists

export filename=$msd/M_monado_datasets/MI_valve_index/MIO_others/MIO14_moving_props.zip
wait_space_for_file $filename
7z x -y $filename
cp configs/msd/msdmi/msdmi_cam0_sensor.yaml MIO14_moving_props/mav0/cam0/sensor.yaml
cp configs/msd/msdmi/msdmi_cam1_sensor.yaml MIO14_moving_props/mav0/cam1/sensor.yaml
cp configs/msd/msdmi/msdmi_imu0_sensor.yaml MIO14_moving_props/mav0/imu0/sensor.yaml
cp configs/msd/msdmi/msdmi_gt_sensor.yaml MIO14_moving_props/mav0/gt/sensor.yaml
mv MIO14_moving_props/mav0/gt MIO14_moving_props/mav0/state_groundtruth_estimate0
touch MIO14_moving_props_exists

export filename=$msd/M_monado_datasets/MI_valve_index/MIO_others/MIO15_moving_person_props.zip
wait_space_for_file $filename
7z x -y $filename
cp configs/msd/msdmi/msdmi_cam0_sensor.yaml MIO15_moving_person_props/mav0/cam0/sensor.yaml
cp configs/msd/msdmi/msdmi_cam1_sensor.yaml MIO15_moving_person_props/mav0/cam1/sensor.yaml
cp configs/msd/msdmi/msdmi_imu0_sensor.yaml MIO15_moving_person_props/mav0/imu0/sensor.yaml
cp configs/msd/msdmi/msdmi_gt_sensor.yaml MIO15_moving_person_props/mav0/gt/sensor.yaml
mv MIO15_moving_person_props/mav0/gt MIO15_moving_person_props/mav0/state_groundtruth_estimate0
touch MIO15_moving_person_props_exists

export filename=$msd/M_monado_datasets/MI_valve_index/MIO_others/MIO16_moving_screens_person_props.zip
wait_space_for_file $filename
7z x -y $filename
cp configs/msd/msdmi/msdmi_cam0_sensor.yaml MIO16_moving_screens_person_props/mav0/cam0/sensor.yaml
cp configs/msd/msdmi/msdmi_cam1_sensor.yaml MIO16_moving_screens_person_props/mav0/cam1/sensor.yaml
cp configs/msd/msdmi/msdmi_imu0_sensor.yaml MIO16_moving_screens_person_props/mav0/imu0/sensor.yaml
cp configs/msd/msdmi/msdmi_gt_sensor.yaml MIO16_moving_screens_person_props/mav0/gt/sensor.yaml
mv MIO16_moving_screens_person_props/mav0/gt MIO16_moving_screens_person_props/mav0/state_groundtruth_estimate0
touch MIO16_moving_screens_person_props_exists

export filename=$msd/M_monado_datasets/MI_valve_index/MIP_playing/MIPB_beat_saber/MIPB01_beatsaber_100bills_360_normal.zip
wait_space_for_file $filename
7z x -y $filename
cp configs/msd/msdmi/msdmi_cam0_sensor.yaml MIPB01_beatsaber_100bills_360_normal/mav0/cam0/sensor.yaml
cp configs/msd/msdmi/msdmi_cam1_sensor.yaml MIPB01_beatsaber_100bills_360_normal/mav0/cam1/sensor.yaml
cp configs/msd/msdmi/msdmi_imu0_sensor.yaml MIPB01_beatsaber_100bills_360_normal/mav0/imu0/sensor.yaml
cp configs/msd/msdmi/msdmi_gt_sensor.yaml MIPB01_beatsaber_100bills_360_normal/mav0/gt/sensor.yaml
mv MIPB01_beatsaber_100bills_360_normal/mav0/gt MIPB01_beatsaber_100bills_360_normal/mav0/state_groundtruth_estimate0
touch MIPB01_beatsaber_100bills_360_normal_exists

export filename=$msd/M_monado_datasets/MI_valve_index/MIP_playing/MIPB_beat_saber/MIPB02_beatsaber_crabrave_360_hard.zip
wait_space_for_file $filename
7z x -y $filename
cp configs/msd/msdmi/msdmi_cam0_sensor.yaml MIPB02_beatsaber_crabrave_360_hard/mav0/cam0/sensor.yaml
cp configs/msd/msdmi/msdmi_cam1_sensor.yaml MIPB02_beatsaber_crabrave_360_hard/mav0/cam1/sensor.yaml
cp configs/msd/msdmi/msdmi_imu0_sensor.yaml MIPB02_beatsaber_crabrave_360_hard/mav0/imu0/sensor.yaml
cp configs/msd/msdmi/msdmi_gt_sensor.yaml MIPB02_beatsaber_crabrave_360_hard/mav0/gt/sensor.yaml
mv MIPB02_beatsaber_crabrave_360_hard/mav0/gt MIPB02_beatsaber_crabrave_360_hard/mav0/state_groundtruth_estimate0
touch MIPB02_beatsaber_crabrave_360_hard_exists

export filename=$msd/M_monado_datasets/MI_valve_index/MIP_playing/MIPB_beat_saber/MIPB03_beatsaber_countryrounds_360_expert.zip
wait_space_for_file $filename
7z x -y $filename
cp configs/msd/msdmi/msdmi_cam0_sensor.yaml MIPB03_beatsaber_countryrounds_360_expert/mav0/cam0/sensor.yaml
cp configs/msd/msdmi/msdmi_cam1_sensor.yaml MIPB03_beatsaber_countryrounds_360_expert/mav0/cam1/sensor.yaml
cp configs/msd/msdmi/msdmi_imu0_sensor.yaml MIPB03_beatsaber_countryrounds_360_expert/mav0/imu0/sensor.yaml
cp configs/msd/msdmi/msdmi_gt_sensor.yaml MIPB03_beatsaber_countryrounds_360_expert/mav0/gt/sensor.yaml
mv MIPB03_beatsaber_countryrounds_360_expert/mav0/gt MIPB03_beatsaber_countryrounds_360_expert/mav0/state_groundtruth_estimate0
touch MIPB03_beatsaber_countryrounds_360_expert_exists

export filename=$msd/M_monado_datasets/MI_valve_index/MIP_playing/MIPB_beat_saber/MIPB04_beatsaber_fitbeat_hard.zip
wait_space_for_file $filename
7z x -y $filename
cp configs/msd/msdmi/msdmi_cam0_sensor.yaml MIPB04_beatsaber_fitbeat_hard/mav0/cam0/sensor.yaml
cp configs/msd/msdmi/msdmi_cam1_sensor.yaml MIPB04_beatsaber_fitbeat_hard/mav0/cam1/sensor.yaml
cp configs/msd/msdmi/msdmi_imu0_sensor.yaml MIPB04_beatsaber_fitbeat_hard/mav0/imu0/sensor.yaml
cp configs/msd/msdmi/msdmi_gt_sensor.yaml MIPB04_beatsaber_fitbeat_hard/mav0/gt/sensor.yaml
mv MIPB04_beatsaber_fitbeat_hard/mav0/gt MIPB04_beatsaber_fitbeat_hard/mav0/state_groundtruth_estimate0
touch MIPB04_beatsaber_fitbeat_hard_exists

export filename=$msd/M_monado_datasets/MI_valve_index/MIP_playing/MIPB_beat_saber/MIPB05_beatsaber_fitbeat_360_expert.zip
wait_space_for_file $filename
7z x -y $filename
cp configs/msd/msdmi/msdmi_cam0_sensor.yaml MIPB05_beatsaber_fitbeat_360_expert/mav0/cam0/sensor.yaml
cp configs/msd/msdmi/msdmi_cam1_sensor.yaml MIPB05_beatsaber_fitbeat_360_expert/mav0/cam1/sensor.yaml
cp configs/msd/msdmi/msdmi_imu0_sensor.yaml MIPB05_beatsaber_fitbeat_360_expert/mav0/imu0/sensor.yaml
cp configs/msd/msdmi/msdmi_gt_sensor.yaml MIPB05_beatsaber_fitbeat_360_expert/mav0/gt/sensor.yaml
mv MIPB05_beatsaber_fitbeat_360_expert/mav0/gt MIPB05_beatsaber_fitbeat_360_expert/mav0/state_groundtruth_estimate0
touch MIPB05_beatsaber_fitbeat_360_expert_exists

export filename=$msd/M_monado_datasets/MI_valve_index/MIP_playing/MIPB_beat_saber/MIPB06_beatsaber_fitbeat_expertplus_1.zip
wait_space_for_file $filename
7z x -y $filename
cp configs/msd/msdmi/msdmi_cam0_sensor.yaml MIPB06_beatsaber_fitbeat_expertplus_1/mav0/cam0/sensor.yaml
cp configs/msd/msdmi/msdmi_cam1_sensor.yaml MIPB06_beatsaber_fitbeat_expertplus_1/mav0/cam1/sensor.yaml
cp configs/msd/msdmi/msdmi_imu0_sensor.yaml MIPB06_beatsaber_fitbeat_expertplus_1/mav0/imu0/sensor.yaml
cp configs/msd/msdmi/msdmi_gt_sensor.yaml MIPB06_beatsaber_fitbeat_expertplus_1/mav0/gt/sensor.yaml
mv MIPB06_beatsaber_fitbeat_expertplus_1/mav0/gt MIPB06_beatsaber_fitbeat_expertplus_1/mav0/state_groundtruth_estimate0
touch MIPB06_beatsaber_fitbeat_expertplus_1_exists

export filename=$msd/M_monado_datasets/MI_valve_index/MIP_playing/MIPB_beat_saber/MIPB07_beatsaber_fitbeat_expertplus_2.zip
wait_space_for_file $filename
7z x -y $filename
cp configs/msd/msdmi/msdmi_cam0_sensor.yaml MIPB07_beatsaber_fitbeat_expertplus_2/mav0/cam0/sensor.yaml
cp configs/msd/msdmi/msdmi_cam1_sensor.yaml MIPB07_beatsaber_fitbeat_expertplus_2/mav0/cam1/sensor.yaml
cp configs/msd/msdmi/msdmi_imu0_sensor.yaml MIPB07_beatsaber_fitbeat_expertplus_2/mav0/imu0/sensor.yaml
cp configs/msd/msdmi/msdmi_gt_sensor.yaml MIPB07_beatsaber_fitbeat_expertplus_2/mav0/gt/sensor.yaml
mv MIPB07_beatsaber_fitbeat_expertplus_2/mav0/gt MIPB07_beatsaber_fitbeat_expertplus_2/mav0/state_groundtruth_estimate0
touch MIPB07_beatsaber_fitbeat_expertplus_2_exists

export filename=$msd/M_monado_datasets/MI_valve_index/MIP_playing/MIPB_beat_saber/MIPB08_beatsaber_long_session_1.zip
wait_space_for_file $filename
7z x -y $filename
cp configs/msd/msdmi/msdmi_cam0_sensor.yaml MIPB08_beatsaber_long_session_1/mav0/cam0/sensor.yaml
cp configs/msd/msdmi/msdmi_cam1_sensor.yaml MIPB08_beatsaber_long_session_1/mav0/cam1/sensor.yaml
cp configs/msd/msdmi/msdmi_imu0_sensor.yaml MIPB08_beatsaber_long_session_1/mav0/imu0/sensor.yaml
cp configs/msd/msdmi/msdmi_gt_sensor.yaml MIPB08_beatsaber_long_session_1/mav0/gt/sensor.yaml
mv MIPB08_beatsaber_long_session_1/mav0/gt MIPB08_beatsaber_long_session_1/mav0/state_groundtruth_estimate0
touch MIPB08_beatsaber_long_session_1_exists

export filename=$msd/M_monado_datasets/MI_valve_index/MIP_playing/MIPP_pistol_whip/MIPP01_pistolwhip_blackmagic_hard.zip
wait_space_for_file $filename
7z x -y $filename
cp configs/msd/msdmi/msdmi_cam0_sensor.yaml MIPP01_pistolwhip_blackmagic_hard/mav0/cam0/sensor.yaml
cp configs/msd/msdmi/msdmi_cam1_sensor.yaml MIPP01_pistolwhip_blackmagic_hard/mav0/cam1/sensor.yaml
cp configs/msd/msdmi/msdmi_imu0_sensor.yaml MIPP01_pistolwhip_blackmagic_hard/mav0/imu0/sensor.yaml
cp configs/msd/msdmi/msdmi_gt_sensor.yaml MIPP01_pistolwhip_blackmagic_hard/mav0/gt/sensor.yaml
mv MIPP01_pistolwhip_blackmagic_hard/mav0/gt MIPP01_pistolwhip_blackmagic_hard/mav0/state_groundtruth_estimate0
touch MIPP01_pistolwhip_blackmagic_hard_exists

export filename=$msd/M_monado_datasets/MI_valve_index/MIP_playing/MIPP_pistol_whip/MIPP02_pistolwhip_lilith_hard.zip
wait_space_for_file $filename
7z x -y $filename
cp configs/msd/msdmi/msdmi_cam0_sensor.yaml MIPP02_pistolwhip_lilith_hard/mav0/cam0/sensor.yaml
cp configs/msd/msdmi/msdmi_cam1_sensor.yaml MIPP02_pistolwhip_lilith_hard/mav0/cam1/sensor.yaml
cp configs/msd/msdmi/msdmi_imu0_sensor.yaml MIPP02_pistolwhip_lilith_hard/mav0/imu0/sensor.yaml
cp configs/msd/msdmi/msdmi_gt_sensor.yaml MIPP02_pistolwhip_lilith_hard/mav0/gt/sensor.yaml
mv MIPP02_pistolwhip_lilith_hard/mav0/gt MIPP02_pistolwhip_lilith_hard/mav0/state_groundtruth_estimate0
touch MIPP02_pistolwhip_lilith_hard_exists

export filename=$msd/M_monado_datasets/MI_valve_index/MIP_playing/MIPP_pistol_whip/MIPP03_pistolwhip_requiem_hard.zip
wait_space_for_file $filename
7z x -y $filename
cp configs/msd/msdmi/msdmi_cam0_sensor.yaml MIPP03_pistolwhip_requiem_hard/mav0/cam0/sensor.yaml
cp configs/msd/msdmi/msdmi_cam1_sensor.yaml MIPP03_pistolwhip_requiem_hard/mav0/cam1/sensor.yaml
cp configs/msd/msdmi/msdmi_imu0_sensor.yaml MIPP03_pistolwhip_requiem_hard/mav0/imu0/sensor.yaml
cp configs/msd/msdmi/msdmi_gt_sensor.yaml MIPP03_pistolwhip_requiem_hard/mav0/gt/sensor.yaml
mv MIPP03_pistolwhip_requiem_hard/mav0/gt MIPP03_pistolwhip_requiem_hard/mav0/state_groundtruth_estimate0
touch MIPP03_pistolwhip_requiem_hard_exists

export filename=$msd/M_monado_datasets/MI_valve_index/MIP_playing/MIPP_pistol_whip/MIPP04_pistolwhip_revelations_hard.zip
wait_space_for_file $filename
7z x -y $filename
cp configs/msd/msdmi/msdmi_cam0_sensor.yaml MIPP04_pistolwhip_revelations_hard/mav0/cam0/sensor.yaml
cp configs/msd/msdmi/msdmi_cam1_sensor.yaml MIPP04_pistolwhip_revelations_hard/mav0/cam1/sensor.yaml
cp configs/msd/msdmi/msdmi_imu0_sensor.yaml MIPP04_pistolwhip_revelations_hard/mav0/imu0/sensor.yaml
cp configs/msd/msdmi/msdmi_gt_sensor.yaml MIPP04_pistolwhip_revelations_hard/mav0/gt/sensor.yaml
mv MIPP04_pistolwhip_revelations_hard/mav0/gt MIPP04_pistolwhip_revelations_hard/mav0/state_groundtruth_estimate0
touch MIPP04_pistolwhip_revelations_hard_exists

export filename=$msd/M_monado_datasets/MI_valve_index/MIP_playing/MIPP_pistol_whip/MIPP05_pistolwhip_thefall_hard_2pistols.zip
wait_space_for_file $filename
7z x -y $filename
cp configs/msd/msdmi/msdmi_cam0_sensor.yaml MIPP05_pistolwhip_thefall_hard_2pistols/mav0/cam0/sensor.yaml
cp configs/msd/msdmi/msdmi_cam1_sensor.yaml MIPP05_pistolwhip_thefall_hard_2pistols/mav0/cam1/sensor.yaml
cp configs/msd/msdmi/msdmi_imu0_sensor.yaml MIPP05_pistolwhip_thefall_hard_2pistols/mav0/imu0/sensor.yaml
cp configs/msd/msdmi/msdmi_gt_sensor.yaml MIPP05_pistolwhip_thefall_hard_2pistols/mav0/gt/sensor.yaml
mv MIPP05_pistolwhip_thefall_hard_2pistols/mav0/gt MIPP05_pistolwhip_thefall_hard_2pistols/mav0/state_groundtruth_estimate0
touch MIPP05_pistolwhip_thefall_hard_2pistols_exists

export filename=$msd/M_monado_datasets/MI_valve_index/MIP_playing/MIPP_pistol_whip/MIPP06_pistolwhip_thegrave_hard.zip
wait_space_for_file $filename
7z x -y $filename
cp configs/msd/msdmi/msdmi_cam0_sensor.yaml MIPP06_pistolwhip_thegrave_hard/mav0/cam0/sensor.yaml
cp configs/msd/msdmi/msdmi_cam1_sensor.yaml MIPP06_pistolwhip_thegrave_hard/mav0/cam1/sensor.yaml
cp configs/msd/msdmi/msdmi_imu0_sensor.yaml MIPP06_pistolwhip_thegrave_hard/mav0/imu0/sensor.yaml
cp configs/msd/msdmi/msdmi_gt_sensor.yaml MIPP06_pistolwhip_thegrave_hard/mav0/gt/sensor.yaml
mv MIPP06_pistolwhip_thegrave_hard/mav0/gt MIPP06_pistolwhip_thegrave_hard/mav0/state_groundtruth_estimate0
touch MIPP06_pistolwhip_thegrave_hard_exists

export filename=$msd/M_monado_datasets/MI_valve_index/MIP_playing/MIPT_thrill_of_the_fight/MIPT01_thrillofthefight_setup.zip
wait_space_for_file $filename
7z x -y $filename
cp configs/msd/msdmi/msdmi_cam0_sensor.yaml MIPT01_thrillofthefight_setup/mav0/cam0/sensor.yaml
cp configs/msd/msdmi/msdmi_cam1_sensor.yaml MIPT01_thrillofthefight_setup/mav0/cam1/sensor.yaml
cp configs/msd/msdmi/msdmi_imu0_sensor.yaml MIPT01_thrillofthefight_setup/mav0/imu0/sensor.yaml
cp configs/msd/msdmi/msdmi_gt_sensor.yaml MIPT01_thrillofthefight_setup/mav0/gt/sensor.yaml
mv MIPT01_thrillofthefight_setup/mav0/gt MIPT01_thrillofthefight_setup/mav0/state_groundtruth_estimate0
touch MIPT01_thrillofthefight_setup_exists

export filename=$msd/M_monado_datasets/MI_valve_index/MIP_playing/MIPT_thrill_of_the_fight/MIPT02_thrillofthefight_fight_1.zip
wait_space_for_file $filename
7z x -y $filename
cp configs/msd/msdmi/msdmi_cam0_sensor.yaml MIPT02_thrillofthefight_fight_1/mav0/cam0/sensor.yaml
cp configs/msd/msdmi/msdmi_cam1_sensor.yaml MIPT02_thrillofthefight_fight_1/mav0/cam1/sensor.yaml
cp configs/msd/msdmi/msdmi_imu0_sensor.yaml MIPT02_thrillofthefight_fight_1/mav0/imu0/sensor.yaml
cp configs/msd/msdmi/msdmi_gt_sensor.yaml MIPT02_thrillofthefight_fight_1/mav0/gt/sensor.yaml
mv MIPT02_thrillofthefight_fight_1/mav0/gt MIPT02_thrillofthefight_fight_1/mav0/state_groundtruth_estimate0
touch MIPT02_thrillofthefight_fight_1_exists

export filename=$msd/M_monado_datasets/MI_valve_index/MIP_playing/MIPT_thrill_of_the_fight/MIPT03_thrillofthefight_fight_2.zip
wait_space_for_file $filename
7z x -y $filename
cp configs/msd/msdmi/msdmi_cam0_sensor.yaml MIPT03_thrillofthefight_fight_2/mav0/cam0/sensor.yaml
cp configs/msd/msdmi/msdmi_cam1_sensor.yaml MIPT03_thrillofthefight_fight_2/mav0/cam1/sensor.yaml
cp configs/msd/msdmi/msdmi_imu0_sensor.yaml MIPT03_thrillofthefight_fight_2/mav0/imu0/sensor.yaml
cp configs/msd/msdmi/msdmi_gt_sensor.yaml MIPT03_thrillofthefight_fight_2/mav0/gt/sensor.yaml
mv MIPT03_thrillofthefight_fight_2/mav0/gt MIPT03_thrillofthefight_fight_2/mav0/state_groundtruth_estimate0
touch MIPT03_thrillofthefight_fight_2_exists

export filename=$msd/M_monado_datasets/MG_reverb_g2/MGO_others/MGO01_low_light.zip
wait_space_for_file $filename
7z x -y $filename
cp configs/msd/msdmg/msdmg_cam0_sensor.yaml MGO01_low_light/mav0/cam0/sensor.yaml
cp configs/msd/msdmg/msdmg_cam1_sensor.yaml MGO01_low_light/mav0/cam1/sensor.yaml
cp configs/msd/msdmg/msdmg_cam2_sensor.yaml MGO01_low_light/mav0/cam2/sensor.yaml
cp configs/msd/msdmg/msdmg_cam3_sensor.yaml MGO01_low_light/mav0/cam3/sensor.yaml
cp configs/msd/msdmg/msdmg_imu0_sensor.yaml MGO01_low_light/mav0/imu0/sensor.yaml
cp configs/msd/msdmg/msdmg_gt_sensor.yaml MGO01_low_light/mav0/gt/sensor.yaml
mv MGO01_low_light/mav0/gt MGO01_low_light/mav0/state_groundtruth_estimate0
touch MGO01_low_light_exists

export filename=$msd/M_monado_datasets/MG_reverb_g2/MGO_others/MGO02_hand_puncher.zip
wait_space_for_file $filename
7z x -y $filename
cp configs/msd/msdmg/msdmg_cam0_sensor.yaml MGO02_hand_puncher/mav0/cam0/sensor.yaml
cp configs/msd/msdmg/msdmg_cam1_sensor.yaml MGO02_hand_puncher/mav0/cam1/sensor.yaml
cp configs/msd/msdmg/msdmg_cam2_sensor.yaml MGO02_hand_puncher/mav0/cam2/sensor.yaml
cp configs/msd/msdmg/msdmg_cam3_sensor.yaml MGO02_hand_puncher/mav0/cam3/sensor.yaml
cp configs/msd/msdmg/msdmg_imu0_sensor.yaml MGO02_hand_puncher/mav0/imu0/sensor.yaml
cp configs/msd/msdmg/msdmg_gt_sensor.yaml MGO02_hand_puncher/mav0/gt/sensor.yaml
mv MGO02_hand_puncher/mav0/gt MGO02_hand_puncher/mav0/state_groundtruth_estimate0
touch MGO02_hand_puncher_exists

export filename=$msd/M_monado_datasets/MG_reverb_g2/MGO_others/MGO03_hand_shooter_easy.zip
wait_space_for_file $filename
7z x -y $filename
cp configs/msd/msdmg/msdmg_cam0_sensor.yaml MGO03_hand_shooter_easy/mav0/cam0/sensor.yaml
cp configs/msd/msdmg/msdmg_cam1_sensor.yaml MGO03_hand_shooter_easy/mav0/cam1/sensor.yaml
cp configs/msd/msdmg/msdmg_cam2_sensor.yaml MGO03_hand_shooter_easy/mav0/cam2/sensor.yaml
cp configs/msd/msdmg/msdmg_cam3_sensor.yaml MGO03_hand_shooter_easy/mav0/cam3/sensor.yaml
cp configs/msd/msdmg/msdmg_imu0_sensor.yaml MGO03_hand_shooter_easy/mav0/imu0/sensor.yaml
cp configs/msd/msdmg/msdmg_gt_sensor.yaml MGO03_hand_shooter_easy/mav0/gt/sensor.yaml
mv MGO03_hand_shooter_easy/mav0/gt MGO03_hand_shooter_easy/mav0/state_groundtruth_estimate0
touch MGO03_hand_shooter_easy_exists

export filename=$msd/M_monado_datasets/MG_reverb_g2/MGO_others/MGO04_hand_shooter_hard.zip
wait_space_for_file $filename
7z x -y $filename
cp configs/msd/msdmg/msdmg_cam0_sensor.yaml MGO04_hand_shooter_hard/mav0/cam0/sensor.yaml
cp configs/msd/msdmg/msdmg_cam1_sensor.yaml MGO04_hand_shooter_hard/mav0/cam1/sensor.yaml
cp configs/msd/msdmg/msdmg_cam2_sensor.yaml MGO04_hand_shooter_hard/mav0/cam2/sensor.yaml
cp configs/msd/msdmg/msdmg_cam3_sensor.yaml MGO04_hand_shooter_hard/mav0/cam3/sensor.yaml
cp configs/msd/msdmg/msdmg_imu0_sensor.yaml MGO04_hand_shooter_hard/mav0/imu0/sensor.yaml
cp configs/msd/msdmg/msdmg_gt_sensor.yaml MGO04_hand_shooter_hard/mav0/gt/sensor.yaml
mv MGO04_hand_shooter_hard/mav0/gt MGO04_hand_shooter_hard/mav0/state_groundtruth_estimate0
touch MGO04_hand_shooter_hard_exists

export filename=$msd/M_monado_datasets/MG_reverb_g2/MGO_others/MGO05_inspect_easy.zip
wait_space_for_file $filename
7z x -y $filename
cp configs/msd/msdmg/msdmg_cam0_sensor.yaml MGO05_inspect_easy/mav0/cam0/sensor.yaml
cp configs/msd/msdmg/msdmg_cam1_sensor.yaml MGO05_inspect_easy/mav0/cam1/sensor.yaml
cp configs/msd/msdmg/msdmg_cam2_sensor.yaml MGO05_inspect_easy/mav0/cam2/sensor.yaml
cp configs/msd/msdmg/msdmg_cam3_sensor.yaml MGO05_inspect_easy/mav0/cam3/sensor.yaml
cp configs/msd/msdmg/msdmg_imu0_sensor.yaml MGO05_inspect_easy/mav0/imu0/sensor.yaml
cp configs/msd/msdmg/msdmg_gt_sensor.yaml MGO05_inspect_easy/mav0/gt/sensor.yaml
mv MGO05_inspect_easy/mav0/gt MGO05_inspect_easy/mav0/state_groundtruth_estimate0
touch MGO05_inspect_easy_exists

export filename=$msd/M_monado_datasets/MG_reverb_g2/MGO_others/MGO06_inspect_hard.zip
wait_space_for_file $filename
7z x -y $filename
cp configs/msd/msdmg/msdmg_cam0_sensor.yaml MGO06_inspect_hard/mav0/cam0/sensor.yaml
cp configs/msd/msdmg/msdmg_cam1_sensor.yaml MGO06_inspect_hard/mav0/cam1/sensor.yaml
cp configs/msd/msdmg/msdmg_cam2_sensor.yaml MGO06_inspect_hard/mav0/cam2/sensor.yaml
cp configs/msd/msdmg/msdmg_cam3_sensor.yaml MGO06_inspect_hard/mav0/cam3/sensor.yaml
cp configs/msd/msdmg/msdmg_imu0_sensor.yaml MGO06_inspect_hard/mav0/imu0/sensor.yaml
cp configs/msd/msdmg/msdmg_gt_sensor.yaml MGO06_inspect_hard/mav0/gt/sensor.yaml
mv MGO06_inspect_hard/mav0/gt MGO06_inspect_hard/mav0/state_groundtruth_estimate0
touch MGO06_inspect_hard_exists

export filename=$msd/M_monado_datasets/MG_reverb_g2/MGO_others/MGO07_mapping_easy.zip
wait_space_for_file $filename
7z x -y $filename
cp configs/msd/msdmg/msdmg_cam0_sensor.yaml MGO07_mapping_easy/mav0/cam0/sensor.yaml
cp configs/msd/msdmg/msdmg_cam1_sensor.yaml MGO07_mapping_easy/mav0/cam1/sensor.yaml
cp configs/msd/msdmg/msdmg_cam2_sensor.yaml MGO07_mapping_easy/mav0/cam2/sensor.yaml
cp configs/msd/msdmg/msdmg_cam3_sensor.yaml MGO07_mapping_easy/mav0/cam3/sensor.yaml
cp configs/msd/msdmg/msdmg_imu0_sensor.yaml MGO07_mapping_easy/mav0/imu0/sensor.yaml
cp configs/msd/msdmg/msdmg_gt_sensor.yaml MGO07_mapping_easy/mav0/gt/sensor.yaml
mv MGO07_mapping_easy/mav0/gt MGO07_mapping_easy/mav0/state_groundtruth_estimate0
touch MGO07_mapping_easy_exists

export filename=$msd/M_monado_datasets/MG_reverb_g2/MGO_others/MGO08_mapping_hard.zip
wait_space_for_file $filename
7z x -y $filename
cp configs/msd/msdmg/msdmg_cam0_sensor.yaml MGO08_mapping_hard/mav0/cam0/sensor.yaml
cp configs/msd/msdmg/msdmg_cam1_sensor.yaml MGO08_mapping_hard/mav0/cam1/sensor.yaml
cp configs/msd/msdmg/msdmg_cam2_sensor.yaml MGO08_mapping_hard/mav0/cam2/sensor.yaml
cp configs/msd/msdmg/msdmg_cam3_sensor.yaml MGO08_mapping_hard/mav0/cam3/sensor.yaml
cp configs/msd/msdmg/msdmg_imu0_sensor.yaml MGO08_mapping_hard/mav0/imu0/sensor.yaml
cp configs/msd/msdmg/msdmg_gt_sensor.yaml MGO08_mapping_hard/mav0/gt/sensor.yaml
mv MGO08_mapping_hard/mav0/gt MGO08_mapping_hard/mav0/state_groundtruth_estimate0
touch MGO08_mapping_hard_exists

export filename=$msd/M_monado_datasets/MG_reverb_g2/MGO_others/MGO09_short_1_updown.zip
wait_space_for_file $filename
7z x -y $filename
cp configs/msd/msdmg/msdmg_cam0_sensor.yaml MGO09_short_1_updown/mav0/cam0/sensor.yaml
cp configs/msd/msdmg/msdmg_cam1_sensor.yaml MGO09_short_1_updown/mav0/cam1/sensor.yaml
cp configs/msd/msdmg/msdmg_cam2_sensor.yaml MGO09_short_1_updown/mav0/cam2/sensor.yaml
cp configs/msd/msdmg/msdmg_cam3_sensor.yaml MGO09_short_1_updown/mav0/cam3/sensor.yaml
cp configs/msd/msdmg/msdmg_imu0_sensor.yaml MGO09_short_1_updown/mav0/imu0/sensor.yaml
cp configs/msd/msdmg/msdmg_gt_sensor.yaml MGO09_short_1_updown/mav0/gt/sensor.yaml
mv MGO09_short_1_updown/mav0/gt MGO09_short_1_updown/mav0/state_groundtruth_estimate0
touch MGO09_short_1_updown_exists

export filename=$msd/M_monado_datasets/MG_reverb_g2/MGO_others/MGO10_short_2_panorama.zip
wait_space_for_file $filename
7z x -y $filename
cp configs/msd/msdmg/msdmg_cam0_sensor.yaml MGO10_short_2_panorama/mav0/cam0/sensor.yaml
cp configs/msd/msdmg/msdmg_cam1_sensor.yaml MGO10_short_2_panorama/mav0/cam1/sensor.yaml
cp configs/msd/msdmg/msdmg_cam2_sensor.yaml MGO10_short_2_panorama/mav0/cam2/sensor.yaml
cp configs/msd/msdmg/msdmg_cam3_sensor.yaml MGO10_short_2_panorama/mav0/cam3/sensor.yaml
cp configs/msd/msdmg/msdmg_imu0_sensor.yaml MGO10_short_2_panorama/mav0/imu0/sensor.yaml
cp configs/msd/msdmg/msdmg_gt_sensor.yaml MGO10_short_2_panorama/mav0/gt/sensor.yaml
mv MGO10_short_2_panorama/mav0/gt MGO10_short_2_panorama/mav0/state_groundtruth_estimate0
touch MGO10_short_2_panorama_exists

export filename=$msd/M_monado_datasets/MG_reverb_g2/MGO_others/MGO11_short_3_backandforth.zip
wait_space_for_file $filename
7z x -y $filename
cp configs/msd/msdmg/msdmg_cam0_sensor.yaml MGO11_short_3_backandforth/mav0/cam0/sensor.yaml
cp configs/msd/msdmg/msdmg_cam1_sensor.yaml MGO11_short_3_backandforth/mav0/cam1/sensor.yaml
cp configs/msd/msdmg/msdmg_cam2_sensor.yaml MGO11_short_3_backandforth/mav0/cam2/sensor.yaml
cp configs/msd/msdmg/msdmg_cam3_sensor.yaml MGO11_short_3_backandforth/mav0/cam3/sensor.yaml
cp configs/msd/msdmg/msdmg_imu0_sensor.yaml MGO11_short_3_backandforth/mav0/imu0/sensor.yaml
cp configs/msd/msdmg/msdmg_gt_sensor.yaml MGO11_short_3_backandforth/mav0/gt/sensor.yaml
mv MGO11_short_3_backandforth/mav0/gt MGO11_short_3_backandforth/mav0/state_groundtruth_estimate0
touch MGO11_short_3_backandforth_exists

export filename=$msd/M_monado_datasets/MG_reverb_g2/MGO_others/MGO12_freemovement_long_session.zip
wait_space_for_file $filename
7z x -y $filename
cp configs/msd/msdmg/msdmg_cam0_sensor.yaml MGO12_freemovement_long_session/mav0/cam0/sensor.yaml
cp configs/msd/msdmg/msdmg_cam1_sensor.yaml MGO12_freemovement_long_session/mav0/cam1/sensor.yaml
cp configs/msd/msdmg/msdmg_cam2_sensor.yaml MGO12_freemovement_long_session/mav0/cam2/sensor.yaml
cp configs/msd/msdmg/msdmg_cam3_sensor.yaml MGO12_freemovement_long_session/mav0/cam3/sensor.yaml
cp configs/msd/msdmg/msdmg_imu0_sensor.yaml MGO12_freemovement_long_session/mav0/imu0/sensor.yaml
cp configs/msd/msdmg/msdmg_gt_sensor.yaml MGO12_freemovement_long_session/mav0/gt/sensor.yaml
mv MGO12_freemovement_long_session/mav0/gt MGO12_freemovement_long_session/mav0/state_groundtruth_estimate0
touch MGO12_freemovement_long_session_exists

export filename=$msd/M_monado_datasets/MG_reverb_g2/MGO_others/MGO13_sudden_movements.zip
wait_space_for_file $filename
7z x -y $filename
cp configs/msd/msdmg/msdmg_cam0_sensor.yaml MGO13_sudden_movements/mav0/cam0/sensor.yaml
cp configs/msd/msdmg/msdmg_cam1_sensor.yaml MGO13_sudden_movements/mav0/cam1/sensor.yaml
cp configs/msd/msdmg/msdmg_cam2_sensor.yaml MGO13_sudden_movements/mav0/cam2/sensor.yaml
cp configs/msd/msdmg/msdmg_cam3_sensor.yaml MGO13_sudden_movements/mav0/cam3/sensor.yaml
cp configs/msd/msdmg/msdmg_imu0_sensor.yaml MGO13_sudden_movements/mav0/imu0/sensor.yaml
cp configs/msd/msdmg/msdmg_gt_sensor.yaml MGO13_sudden_movements/mav0/gt/sensor.yaml
mv MGO13_sudden_movements/mav0/gt MGO13_sudden_movements/mav0/state_groundtruth_estimate0
touch MGO13_sudden_movements_exists

export filename=$msd/M_monado_datasets/MG_reverb_g2/MGO_others/MGO14_flickering_light.zip
wait_space_for_file $filename
7z x -y $filename
cp configs/msd/msdmg/msdmg_cam0_sensor.yaml MGO14_flickering_light/mav0/cam0/sensor.yaml
cp configs/msd/msdmg/msdmg_cam1_sensor.yaml MGO14_flickering_light/mav0/cam1/sensor.yaml
cp configs/msd/msdmg/msdmg_cam2_sensor.yaml MGO14_flickering_light/mav0/cam2/sensor.yaml
cp configs/msd/msdmg/msdmg_cam3_sensor.yaml MGO14_flickering_light/mav0/cam3/sensor.yaml
cp configs/msd/msdmg/msdmg_imu0_sensor.yaml MGO14_flickering_light/mav0/imu0/sensor.yaml
cp configs/msd/msdmg/msdmg_gt_sensor.yaml MGO14_flickering_light/mav0/gt/sensor.yaml
mv MGO14_flickering_light/mav0/gt MGO14_flickering_light/mav0/state_groundtruth_estimate0
touch MGO14_flickering_light_exists

export filename=$msd/M_monado_datasets/MG_reverb_g2/MGO_others/MGO15_seated_screen.zip
wait_space_for_file $filename
7z x -y $filename
cp configs/msd/msdmg/msdmg_cam0_sensor.yaml MGO15_seated_screen/mav0/cam0/sensor.yaml
cp configs/msd/msdmg/msdmg_cam1_sensor.yaml MGO15_seated_screen/mav0/cam1/sensor.yaml
cp configs/msd/msdmg/msdmg_cam2_sensor.yaml MGO15_seated_screen/mav0/cam2/sensor.yaml
cp configs/msd/msdmg/msdmg_cam3_sensor.yaml MGO15_seated_screen/mav0/cam3/sensor.yaml
cp configs/msd/msdmg/msdmg_imu0_sensor.yaml MGO15_seated_screen/mav0/imu0/sensor.yaml
cp configs/msd/msdmg/msdmg_gt_sensor.yaml MGO15_seated_screen/mav0/gt/sensor.yaml
mv MGO15_seated_screen/mav0/gt MGO15_seated_screen/mav0/state_groundtruth_estimate0
touch MGO15_seated_screen_exists

export filename=$msd/M_monado_datasets/MO_odyssey_plus/MOO_others/MOO01_hand_puncher_1.zip
wait_space_for_file $filename
7z x -y $filename
cp configs/msd/msdmo/msdmo_cam0_sensor.yaml MOO01_hand_puncher_1/mav0/cam0/sensor.yaml
cp configs/msd/msdmo/msdmo_cam1_sensor.yaml MOO01_hand_puncher_1/mav0/cam1/sensor.yaml
cp configs/msd/msdmo/msdmo_imu0_sensor.yaml MOO01_hand_puncher_1/mav0/imu0/sensor.yaml
cp configs/msd/msdmo/msdmo_gt_sensor.yaml MOO01_hand_puncher_1/mav0/gt/sensor.yaml
mv MOO01_hand_puncher_1/mav0/gt MOO01_hand_puncher_1/mav0/state_groundtruth_estimate0
touch MOO01_hand_puncher_1_exists

export filename=$msd/M_monado_datasets/MO_odyssey_plus/MOO_others/MOO02_hand_puncher_2.zip
wait_space_for_file $filename
7z x -y $filename
cp configs/msd/msdmo/msdmo_cam0_sensor.yaml MOO02_hand_puncher_2/mav0/cam0/sensor.yaml
cp configs/msd/msdmo/msdmo_cam1_sensor.yaml MOO02_hand_puncher_2/mav0/cam1/sensor.yaml
cp configs/msd/msdmo/msdmo_imu0_sensor.yaml MOO02_hand_puncher_2/mav0/imu0/sensor.yaml
cp configs/msd/msdmo/msdmo_gt_sensor.yaml MOO02_hand_puncher_2/mav0/gt/sensor.yaml
mv MOO02_hand_puncher_2/mav0/gt MOO02_hand_puncher_2/mav0/state_groundtruth_estimate0
touch MOO02_hand_puncher_2_exists

export filename=$msd/M_monado_datasets/MO_odyssey_plus/MOO_others/MOO03_hand_shooter_easy.zip
wait_space_for_file $filename
7z x -y $filename
cp configs/msd/msdmo/msdmo_cam0_sensor.yaml MOO03_hand_shooter_easy/mav0/cam0/sensor.yaml
cp configs/msd/msdmo/msdmo_cam1_sensor.yaml MOO03_hand_shooter_easy/mav0/cam1/sensor.yaml
cp configs/msd/msdmo/msdmo_imu0_sensor.yaml MOO03_hand_shooter_easy/mav0/imu0/sensor.yaml
cp configs/msd/msdmo/msdmo_gt_sensor.yaml MOO03_hand_shooter_easy/mav0/gt/sensor.yaml
mv MOO03_hand_shooter_easy/mav0/gt MOO03_hand_shooter_easy/mav0/state_groundtruth_estimate0
touch MOO03_hand_shooter_easy_exists

export filename=$msd/M_monado_datasets/MO_odyssey_plus/MOO_others/MOO04_hand_shooter_hard.zip
wait_space_for_file $filename
7z x -y $filename
cp configs/msd/msdmo/msdmo_cam0_sensor.yaml MOO04_hand_shooter_hard/mav0/cam0/sensor.yaml
cp configs/msd/msdmo/msdmo_cam1_sensor.yaml MOO04_hand_shooter_hard/mav0/cam1/sensor.yaml
cp configs/msd/msdmo/msdmo_imu0_sensor.yaml MOO04_hand_shooter_hard/mav0/imu0/sensor.yaml
cp configs/msd/msdmo/msdmo_gt_sensor.yaml MOO04_hand_shooter_hard/mav0/gt/sensor.yaml
mv MOO04_hand_shooter_hard/mav0/gt MOO04_hand_shooter_hard/mav0/state_groundtruth_estimate0
touch MOO04_hand_shooter_hard_exists

export filename=$msd/M_monado_datasets/MO_odyssey_plus/MOO_others/MOO05_inspect_easy.zip
wait_space_for_file $filename
7z x -y $filename
cp configs/msd/msdmo/msdmo_cam0_sensor.yaml MOO05_inspect_easy/mav0/cam0/sensor.yaml
cp configs/msd/msdmo/msdmo_cam1_sensor.yaml MOO05_inspect_easy/mav0/cam1/sensor.yaml
cp configs/msd/msdmo/msdmo_imu0_sensor.yaml MOO05_inspect_easy/mav0/imu0/sensor.yaml
cp configs/msd/msdmo/msdmo_gt_sensor.yaml MOO05_inspect_easy/mav0/gt/sensor.yaml
mv MOO05_inspect_easy/mav0/gt MOO05_inspect_easy/mav0/state_groundtruth_estimate0
touch MOO05_inspect_easy_exists

export filename=$msd/M_monado_datasets/MO_odyssey_plus/MOO_others/MOO06_inspect_hard.zip
wait_space_for_file $filename
7z x -y $filename
cp configs/msd/msdmo/msdmo_cam0_sensor.yaml MOO06_inspect_hard/mav0/cam0/sensor.yaml
cp configs/msd/msdmo/msdmo_cam1_sensor.yaml MOO06_inspect_hard/mav0/cam1/sensor.yaml
cp configs/msd/msdmo/msdmo_imu0_sensor.yaml MOO06_inspect_hard/mav0/imu0/sensor.yaml
cp configs/msd/msdmo/msdmo_gt_sensor.yaml MOO06_inspect_hard/mav0/gt/sensor.yaml
mv MOO06_inspect_hard/mav0/gt MOO06_inspect_hard/mav0/state_groundtruth_estimate0
touch MOO06_inspect_hard_exists

export filename=$msd/M_monado_datasets/MO_odyssey_plus/MOO_others/MOO07_mapping_easy.zip
wait_space_for_file $filename
7z x -y $filename
cp configs/msd/msdmo/msdmo_cam0_sensor.yaml MOO07_mapping_easy/mav0/cam0/sensor.yaml
cp configs/msd/msdmo/msdmo_cam1_sensor.yaml MOO07_mapping_easy/mav0/cam1/sensor.yaml
cp configs/msd/msdmo/msdmo_imu0_sensor.yaml MOO07_mapping_easy/mav0/imu0/sensor.yaml
cp configs/msd/msdmo/msdmo_gt_sensor.yaml MOO07_mapping_easy/mav0/gt/sensor.yaml
mv MOO07_mapping_easy/mav0/gt MOO07_mapping_easy/mav0/state_groundtruth_estimate0
touch MOO07_mapping_easy_exists

export filename=$msd/M_monado_datasets/MO_odyssey_plus/MOO_others/MOO08_mapping_hard.zip
wait_space_for_file $filename
7z x -y $filename
cp configs/msd/msdmo/msdmo_cam0_sensor.yaml MOO08_mapping_hard/mav0/cam0/sensor.yaml
cp configs/msd/msdmo/msdmo_cam1_sensor.yaml MOO08_mapping_hard/mav0/cam1/sensor.yaml
cp configs/msd/msdmo/msdmo_imu0_sensor.yaml MOO08_mapping_hard/mav0/imu0/sensor.yaml
cp configs/msd/msdmo/msdmo_gt_sensor.yaml MOO08_mapping_hard/mav0/gt/sensor.yaml
mv MOO08_mapping_hard/mav0/gt MOO08_mapping_hard/mav0/state_groundtruth_estimate0
touch MOO08_mapping_hard_exists

export filename=$msd/M_monado_datasets/MO_odyssey_plus/MOO_others/MOO09_short_1_updown.zip
wait_space_for_file $filename
7z x -y $filename
cp configs/msd/msdmo/msdmo_cam0_sensor.yaml MOO09_short_1_updown/mav0/cam0/sensor.yaml
cp configs/msd/msdmo/msdmo_cam1_sensor.yaml MOO09_short_1_updown/mav0/cam1/sensor.yaml
cp configs/msd/msdmo/msdmo_imu0_sensor.yaml MOO09_short_1_updown/mav0/imu0/sensor.yaml
cp configs/msd/msdmo/msdmo_gt_sensor.yaml MOO09_short_1_updown/mav0/gt/sensor.yaml
mv MOO09_short_1_updown/mav0/gt MOO09_short_1_updown/mav0/state_groundtruth_estimate0
touch MOO09_short_1_updown_exists

export filename=$msd/M_monado_datasets/MO_odyssey_plus/MOO_others/MOO10_short_2_panorama.zip
wait_space_for_file $filename
7z x -y $filename
cp configs/msd/msdmo/msdmo_cam0_sensor.yaml MOO10_short_2_panorama/mav0/cam0/sensor.yaml
cp configs/msd/msdmo/msdmo_cam1_sensor.yaml MOO10_short_2_panorama/mav0/cam1/sensor.yaml
cp configs/msd/msdmo/msdmo_imu0_sensor.yaml MOO10_short_2_panorama/mav0/imu0/sensor.yaml
cp configs/msd/msdmo/msdmo_gt_sensor.yaml MOO10_short_2_panorama/mav0/gt/sensor.yaml
mv MOO10_short_2_panorama/mav0/gt MOO10_short_2_panorama/mav0/state_groundtruth_estimate0
touch MOO10_short_2_panorama_exists

export filename=$msd/M_monado_datasets/MO_odyssey_plus/MOO_others/MOO11_short_3_backandforth.zip
wait_space_for_file $filename
7z x -y $filename
cp configs/msd/msdmo/msdmo_cam0_sensor.yaml MOO11_short_3_backandforth/mav0/cam0/sensor.yaml
cp configs/msd/msdmo/msdmo_cam1_sensor.yaml MOO11_short_3_backandforth/mav0/cam1/sensor.yaml
cp configs/msd/msdmo/msdmo_imu0_sensor.yaml MOO11_short_3_backandforth/mav0/imu0/sensor.yaml
cp configs/msd/msdmo/msdmo_gt_sensor.yaml MOO11_short_3_backandforth/mav0/gt/sensor.yaml
mv MOO11_short_3_backandforth/mav0/gt MOO11_short_3_backandforth/mav0/state_groundtruth_estimate0
touch MOO11_short_3_backandforth_exists

export filename=$msd/M_monado_datasets/MO_odyssey_plus/MOO_others/MOO12_freemovement_long_session.zip
wait_space_for_file $filename
7z x -y $filename
cp configs/msd/msdmo/msdmo_cam0_sensor.yaml MOO12_freemovement_long_session/mav0/cam0/sensor.yaml
cp configs/msd/msdmo/msdmo_cam1_sensor.yaml MOO12_freemovement_long_session/mav0/cam1/sensor.yaml
cp configs/msd/msdmo/msdmo_imu0_sensor.yaml MOO12_freemovement_long_session/mav0/imu0/sensor.yaml
cp configs/msd/msdmo/msdmo_gt_sensor.yaml MOO12_freemovement_long_session/mav0/gt/sensor.yaml
mv MOO12_freemovement_long_session/mav0/gt MOO12_freemovement_long_session/mav0/state_groundtruth_estimate0
touch MOO12_freemovement_long_session_exists

export filename=$msd/M_monado_datasets/MO_odyssey_plus/MOO_others/MOO13_sudden_movements.zip
wait_space_for_file $filename
7z x -y $filename
cp configs/msd/msdmo/msdmo_cam0_sensor.yaml MOO13_sudden_movements/mav0/cam0/sensor.yaml
cp configs/msd/msdmo/msdmo_cam1_sensor.yaml MOO13_sudden_movements/mav0/cam1/sensor.yaml
cp configs/msd/msdmo/msdmo_imu0_sensor.yaml MOO13_sudden_movements/mav0/imu0/sensor.yaml
cp configs/msd/msdmo/msdmo_gt_sensor.yaml MOO13_sudden_movements/mav0/gt/sensor.yaml
mv MOO13_sudden_movements/mav0/gt MOO13_sudden_movements/mav0/state_groundtruth_estimate0
touch MOO13_sudden_movements_exists

export filename=$msd/M_monado_datasets/MO_odyssey_plus/MOO_others/MOO14_flickering_light.zip
wait_space_for_file $filename
7z x -y $filename
cp configs/msd/msdmo/msdmo_cam0_sensor.yaml MOO14_flickering_light/mav0/cam0/sensor.yaml
cp configs/msd/msdmo/msdmo_cam1_sensor.yaml MOO14_flickering_light/mav0/cam1/sensor.yaml
cp configs/msd/msdmo/msdmo_imu0_sensor.yaml MOO14_flickering_light/mav0/imu0/sensor.yaml
cp configs/msd/msdmo/msdmo_gt_sensor.yaml MOO14_flickering_light/mav0/gt/sensor.yaml
mv MOO14_flickering_light/mav0/gt MOO14_flickering_light/mav0/state_groundtruth_estimate0
touch MOO14_flickering_light_exists

export filename=$msd/M_monado_datasets/MO_odyssey_plus/MOO_others/MOO15_seated_screen.zip
wait_space_for_file $filename
7z x -y $filename
cp configs/msd/msdmo/msdmo_cam0_sensor.yaml MOO15_seated_screen/mav0/cam0/sensor.yaml
cp configs/msd/msdmo/msdmo_cam1_sensor.yaml MOO15_seated_screen/mav0/cam1/sensor.yaml
cp configs/msd/msdmo/msdmo_imu0_sensor.yaml MOO15_seated_screen/mav0/imu0/sensor.yaml
cp configs/msd/msdmo/msdmo_gt_sensor.yaml MOO15_seated_screen/mav0/gt/sensor.yaml
mv MOO15_seated_screen/mav0/gt MOO15_seated_screen/mav0/state_groundtruth_estimate0
touch MOO15_seated_screen_exists

export filename=$msd/M_monado_datasets/MO_odyssey_plus/MOO_others/MOO16_still.zip
wait_space_for_file $filename
7z x -y $filename
cp configs/msd/msdmo/msdmo_cam0_sensor.yaml MOO16_still/mav0/cam0/sensor.yaml
cp configs/msd/msdmo/msdmo_cam1_sensor.yaml MOO16_still/mav0/cam1/sensor.yaml
cp configs/msd/msdmo/msdmo_imu0_sensor.yaml MOO16_still/mav0/imu0/sensor.yaml
cp configs/msd/msdmo/msdmo_gt_sensor.yaml MOO16_still/mav0/gt/sensor.yaml
mv MOO16_still/mav0/gt MOO16_still/mav0/state_groundtruth_estimate0
touch MOO16_still_exists

sendemail.sh '[CHECK] SnakeSLAM uncompression finished' 'Check if all datasets have been run'
